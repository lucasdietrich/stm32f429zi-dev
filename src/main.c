#include <zephyr.h>

#include <logging/log.h>
LOG_MODULE_REGISTER(main, LOG_LEVEL_INF);

int main(void)
{
	for (;;) {
		printk("Hello, world!\n");
		
		k_sleep(K_SECONDS(1));
	}

	return 0;
}