#include <string.h>

#include <zephyr.h>
#include <sys/reboot.h>

#include <device.h>
#include <drivers/flash.h>
#include <storage/flash_map.h>
#include <fs/nvs.h>

#include <logging/log.h>
LOG_MODULE_REGISTER(main, LOG_LEVEL_INF);

static struct nvs_fs fs;

#define STORAGE_NODE DT_NODE_BY_FIXED_PARTITION_LABEL(storage)
#define FLASH_NODE DT_MTD_FROM_FIXED_PARTITION(STORAGE_NODE)

typedef uint8_t data1_t[0x18];
typedef uint8_t data2_t[0x50];
typedef uint8_t data3_t[0x100];
typedef uint8_t data4_t[0x1200];

/* https://docs.zephyrproject.org/latest/services/storage/nvs/nvs.html */

int main(void)
{
	int rc;
	
	/* Init */

	const struct device *const flash_dev = DEVICE_DT_GET(FLASH_NODE);
	if (!device_is_ready(flash_dev)) {
		LOG_ERR("Flash device %s is not ready\n", flash_dev->name);
		return -1;
	}

	struct flash_pages_info info;
	const off_t offset = FLASH_AREA_OFFSET(storage);
	rc = flash_get_page_info_by_offs(flash_dev, offset, &info);
	if (rc) {
		LOG_ERR("Unable to get page info rc=%d\n", rc);
		return -1;
	}
	LOG_DBG("info: start_offset=%d size=%u index=%u", 
		info.start_offset, info.size, info.index);

	fs.offset = info.start_offset;
	fs.sector_size = info.size;
	fs.sector_count = 4U;

	rc = nvs_init(&fs, flash_dev->name);
	if (rc) {
		LOG_ERR("Unable to initialize nvs rc=%d\n", rc);
		return -1;
	}

	ssize_t free_space = nvs_calc_free_space(&fs);
	LOG_INF("Free space: %x bytes\n", free_space);

	/* NVS Ready */

	LOG_INF("NVS Ready %d", 0);

	data1_t data1;

	ssize_t ret = nvs_read(&fs, 0U, &data1, sizeof(data1_t));
	if ((ret < 0) && (ret != -ENOENT)) {
		LOG_ERR("Unable to read data1 rc=%d\n", ret);
		return -1;
	}
	LOG_INF("nvs_read(... , 0U, ... , %u) = %d", sizeof(data1_t), ret);
	LOG_HEXDUMP_INF(data1, sizeof(data1), "data1");

	const char *str = "Hello World!";
	memcpy(&data1, str, strlen(str));
	data1[0]++;
	ret = nvs_write(&fs, 0U, &data1, sizeof(data1_t));
	if (ret < 0) {
		LOG_ERR("Unable to write data1 rc=%d\n", ret);
		return -1;
	}

	LOG_INF("nvs_write(... , 0U, ... , %u) = %d", sizeof(data1_t), ret);

	ret = nvs_read_hist(&fs, 0U, &data1, sizeof(data1_t), 1);
	if ((ret < 0) && (ret != -ENOENT)) {
		LOG_ERR("Unable to read data1 rc=%d\n", ret);
		return -1;
	}

	LOG_INF("nvs_read_hist(... , 0U, ... , %u, 1) = %d", sizeof(data1_t), ret);
	LOG_HEXDUMP_INF(data1, sizeof(data1), "data1");


	/* Application */

	LOG_INF("Application starting %d", 0);

	k_sleep(K_FOREVER);

	return 0;
}