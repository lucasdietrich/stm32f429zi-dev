#include <zephyr.h>

#include <string.h>

#include "uart_ipc/ipc.h"

// #include <uart_ipc/ipc.h>

#define MESSAGE "IPC"

int main(void)
{
	ipc_data_t data;

	memcpy(data.buf, MESSAGE, sizeof(MESSAGE));
	data.size = sizeof(MESSAGE);

	k_sleep(K_SECONDS(2));

	for (;;) {
		ipc_send_data(&data);

		k_sleep(K_SECONDS(10));
	}
}