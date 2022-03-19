#include <kernel.h>

#include "ipc/ipc.h"

int main(void)
{
	ipc_initialize();

	for (;;)
	{
		k_sleep(K_SECONDS(1));
	}
	
	return 0;
}