#include <zephyr.h>

#include <string.h>

#include "uart_ipc/ipc.h"

#define MESSAGE "IPC"

K_MSGQ_DEFINE(msgq, sizeof(ipc_frame_t), 1, 4);

int main(void)
{
	ipc_data_t data;

	memcpy(data.buf, MESSAGE, sizeof(MESSAGE));
	data.size = sizeof(MESSAGE);

	k_sleep(K_SECONDS(2));

	for (;;) {
		printk("%s\n", MESSAGE);
		ipc_send_data(&data);
		k_sleep(K_SECONDS(10));
	}

	return 0;
}

void thread(void *_a, void *_b, void *_c);

K_THREAD_DEFINE(tid, 1024, thread, NULL, NULL, NULL, K_PRIO_PREEMPT(8), 0, 0);

void thread(void *_a, void *_b, void *_c)
{
	int ret;
	ipc_frame_t frame;

	ipc_attach_rx_msgq(&msgq);

	for (;;) {
		ret = k_msgq_get(&msgq, &frame, K_FOREVER);
		if (ret == 0) {
			printk("seq = %u", frame.seq);
		}
	}
}