#include <kernel.h>

int main(void)
{
    for (;;) {
        printk("Hello, world!\n");
        k_sleep(K_SECONDS(1));
    }
    return 0;
}