#include "ipc.h"

#include <kernel.h>

#include <device.h>
#include <devicetree.h>
#include <drivers/uart.h>

#include <logging/log.h>
LOG_MODULE_REGISTER(ipc, LOG_LEVEL_DBG);

// TODO monitor usage using CONFIG_MEM_SLAB_TRACE_MAX_UTILIZATION

// config
#define IPC_UART_RX_TIMEOUT_MS 2000U
#define CONFIG_IPC_MEMSLAB_COUNT 2

// drivers
#define IPC_UART_NODE DT_ALIAS(ipc_uart)

static const struct device *uart_dev = DEVICE_DT_GET(IPC_UART_NODE);

static uint8_t double_buffer[2][IPC_FRAME_SIZE];
static uint8_t *next_buffer = double_buffer[1];

// internal : interrupt, thread
static struct {
	ipc_frame_t *frame;
	size_t received;
} cur_rx_context = {
	.frame = NULL,
	.received = 0U
};

#define IPC_MEMSLAB_COUNT (CONFIG_IPC_MEMSLAB_COUNT)

static K_MEM_SLAB_DEFINE(frames_slab, IPC_FRAME_SIZE, IPC_MEMSLAB_COUNT, 4);
static K_FIFO_DEFINE(frames_fifo);

static inline int alloc_frame_buf(ipc_frame_t **p_frame) {
	return k_mem_slab_alloc(&frames_slab, (void **) p_frame, K_NO_WAIT);
}

static inline void free_frame_buf(ipc_frame_t **p_frame) {
	k_mem_slab_free(&frames_slab, (void **) p_frame);
}

// application
static struct k_msgq *application_msgq = NULL;

/*___________________________________________________________________________*/

#define IPC_STATE_INITIALIZED_BIT 0U
#define IPC_STATE_INITIALIZED_MASK BIT(IPC_STATE_INITIALIZED_BIT)

ATOMIC_DEFINE(ipc_state, 1U);

bool ipc_is_initialized(void)
{
	return (atomic_get(ipc_state) & IPC_STATE_INITIALIZED_MASK) != 0;
}

/*___________________________________________________________________________*/

void ipc_debug(void)
{
	LOG_DBG("IPC_FRAME_SIZE = %u", IPC_FRAME_SIZE);
}

int ipc_attach_msgq(struct k_msgq *msgq)
{
	if (ipc_is_initialized() == true) {
		LOG_ERR("IPC already initialized %d", 0);
		return -EINVAL;
	}

	application_msgq = msgq;

	return 0;
}

/**
 * @brief  Find sequence of bytes in an array
 * 
 * @param s array to search in
 * @param n size of array
 * @param seq sequence to search for
 * @param m size of sequence
 * @return const uint8_t* pointer to the first byte of the sequence in the array, or NULL if not found
 */
static const uint8_t *memseqchr(const uint8_t *s,
				size_t n,
				const uint8_t *seq,
				size_t m)
{
	const uint8_t *p = s;
	const uint8_t *c = seq;

	while (p != NULL) {
		p = memchr(s, *c, n);
		if (p != NULL) {
			size_t i = 1U;
			while (i < m && p[i] == seq[i]) {
				i++;
			}

			if (i == m) {
				break;
			} else {
				n -= (p - s) + 1;
				s = p + 1;
			}
		}
	}

	return p;
}

static void handle_received_chunk(const uint8_t *data, size_t size)
{
	__ASSERT(size <= IPC_FRAME_SIZE, "size too big");
	
	LOG_DBG("Received %u B", size);

	int ret;
	const uint8_t *position = data;

	/* no frame received yet */
	if (cur_rx_context.frame == NULL) {

		/* we expect a start frame delimiter */
		const uint32_t sfd = IPC_START_FRAME_DELIMITER;
		position = memseqchr(data, size,
				     (const uint8_t *) &sfd,
				     IPC_START_FRAME_DELIMITER_SIZE);
		LOG_HEXDUMP_WRN(data, size, "sfd");

		if (position == NULL) {
			/* start frame delimiter not found, discard data */
			LOG_WRN("DELIMITER not found, discarding %u B", size);
			return;
		}

		if (position != data) {
			/* start frame delimiter not at the beginning of the data,
			 * discard some data */
			LOG_WRN("DELIMITER not at beginning, discarding some %u B",
				position - data);
		}

		/* if start frame delimiter is found, allocate a frame buffer */
		ret = alloc_frame_buf(&cur_rx_context.frame);
		if (ret != 0) {
			LOG_ERR("alloc_frame_buf() failed %d, discarding %u B",
				ret, size);
			return;
		}
	}

	const size_t append_size = size - (position - data);
	const size_t frame_remaining_size = IPC_FRAME_SIZE - cur_rx_context.received;

	size_t append_size_to_frame;
	size_t append_size_to_next_frame;

	/* if next frame start are already received in the current buffer */
	if (append_size > frame_remaining_size) {
		append_size_to_frame = frame_remaining_size;
		append_size_to_next_frame = append_size - frame_remaining_size;
	} else {
		append_size_to_frame = append_size;
	}	append_size_to_next_frame = 0U;

	/* copy data to the frame buffer */
	memcpy(&cur_rx_context.frame[cur_rx_context.received],
	       position, append_size_to_frame);

	cur_rx_context.received += append_size_to_frame;

	/* if frame is complete */
	if (cur_rx_context.received == IPC_FRAME_SIZE) {

		/* a frame is complete, verify the end frame delimiter */
		const uint8_t *const end_delimiter_pos =
			((uint8_t *) cur_rx_context.frame) +
			IPC_FRAME_SIZE -
			IPC_END_FRAME_DELIMITER_SIZE;
		const uint32_t efd = IPC_END_FRAME_DELIMITER;
		if (memcmp(end_delimiter_pos,
			   (void *) &efd,
			   IPC_END_FRAME_DELIMITER_SIZE) == 0) {

			/* Pass the detected frame to the processing thread by 
			 * the FIFO
			 * Note: As queuing a FIFO requires to write an address 
			 *  at the beginning of the queued data, the start 
			 *  frame delimiter will be overwritten.
			 *  However we don't need it anymore as it has been already
			 *  checked above.
			 */
			k_fifo_put(&frames_fifo, cur_rx_context.frame);
		} else {
			LOG_WRN("END_DELIMITER not found, discarding %u B",
				IPC_FRAME_SIZE);
		}

		/* ready to receive the next frame */
		cur_rx_context.frame = NULL;
		cur_rx_context.received = 0U;

		/* if there is some data left to process */
		if (append_size_to_next_frame != 0) {
			LOG_DBG("Received %u B from next frame", 
				append_size_to_next_frame);
				
			position += append_size_to_frame;
			handle_received_chunk(position, append_size_to_next_frame);
		}
	}
}

static void uart_callback(const struct device *dev,
			  struct uart_event *evt,
			  void *user_data)
{
	LOG_DBG("evt->type = %u", evt->type);

	switch (evt->type) {
	case UART_TX_DONE:
		break;
	case UART_TX_ABORTED:
		break;
	case UART_RX_RDY:
	{
		handle_received_chunk(evt->data.rx.buf + evt->data.rx.offset,
				      evt->data.rx.len);
		break;
	}
	case UART_RX_BUF_REQUEST:
	{
		uart_rx_buf_rsp(dev, next_buffer, IPC_FRAME_SIZE);
		break;
	}
	case UART_RX_BUF_RELEASED:
	{
		next_buffer = evt->data.rx_buf.buf;
		break;
	}
	case UART_RX_DISABLED:
	{
		LOG_WRN("RX disabled %d", 0);
		break;
	}
	case UART_RX_STOPPED:
	{
		LOG_WRN("RX stopped %d", evt->data.rx_stop.reason);
		break;
	}
	}
}

int ipc_initialize(void)
{
	int ret;

	if (device_is_ready(uart_dev) == false) {
		LOG_ERR("IPC UART device not ready = %d", 0);
		return -1;
	}

	atomic_set_bit(ipc_state, IPC_STATE_INITIALIZED_BIT);

	ret = uart_callback_set(uart_dev, uart_callback, NULL);
	if (ret != 0) {
		LOG_ERR("uart_callback_set() failed %d", ret);
		return -1;
	}

	ret = uart_rx_enable(uart_dev,
			     double_buffer[0],
			     IPC_FRAME_SIZE,
			     IPC_UART_RX_TIMEOUT_MS);
	if (ret != 0) {
		LOG_ERR("uart_rx_enable() failed %d", ret);
		return -1;
	}

	return 0;
}

/*___________________________________________________________________________*/

// thread
static void ipc_thread(void *_a, void *_b, void *_c);

K_THREAD_DEFINE(ipc_thread_id, 0x400, ipc_thread, NULL, NULL, NULL, K_PRIO_PREEMPT(8), 0, 0);

static void ipc_thread(void *_a, void *_b, void *_c)
{
	// todo poll
	ipc_frame_t *frame;

	ipc_frame_t tx_frame = {
		.start_delimiter = IPC_START_FRAME_DELIMITER,
		.seq = 0U,
		.data = {
			.size = 2U,
			.buf = {'a', 'b'}
		},
		.crc32 = 2,
		.end_delimiter = IPC_END_FRAME_DELIMITER
	};

	int ret = uart_tx(uart_dev, (const uint8_t *) &tx_frame, sizeof(tx_frame), SYS_FOREVER_MS);
	if (ret != 0) {
		LOG_ERR("uart_tx() failed %d", ret);
	}

	for (;;) {
		frame = (ipc_frame_t *) k_fifo_get(&frames_fifo, K_FOREVER);

		ipc_log_frame(frame);

		free_frame_buf(&frame);
	}	
}

/*___________________________________________________________________________*/

void ipc_log_frame(const ipc_frame_t *frame)
{
	LOG_INF("IPC frame: %u B, data size = %u, sfd = %x, efd = %x crc32=%u",
		IPC_FRAME_SIZE, frame->data.size, frame->start_delimiter,
		frame->end_delimiter, frame->crc32);
	LOG_HEXDUMP_DBG(frame->data.buf, frame->data.size, "IPC frame data");
}