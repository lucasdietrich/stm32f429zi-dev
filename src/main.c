#include <zephyr.h>

#include <device.h>
#include <devicetree.h>

#include <stm32f429xx.h>
#include <stm32f4xx_hal_crc.h>
#include <stm32f4xx_ll_crc.h>

#include <logging/log.h>
LOG_MODULE_REGISTER(main, LOG_LEVEL_DBG);

#include "drivers/crc/stm32_crc32.h"

#define CRC_NODE DT_NODELABEL(crc1)

static const struct device *crc_dev = DEVICE_DT_GET(CRC_NODE);

#include "ipc/ipc.h"

// 697034682
static uint32_t array[2] = { 0x1, 0x2};

void zephyr_drivers_crc(void)
{
	const bool crc_ready = device_is_ready(crc_dev);
	if (crc_ready) {
		uint32_t crc = crc_calculate(crc_dev, array, 2);
		LOG_DBG("CRC = %u", crc);
	} else {
		LOG_DBG("CRC not ready");
	}
}

void hal_drivers_crc(void)
{
	CRC_HandleTypeDef hcrc;
	hcrc.Instance = CRC;
	LOG_DBG("hcrc.Instance = %x", (uint32_t) hcrc.Instance);

	__HAL_RCC_CRC_CLK_ENABLE();

	HAL_StatusTypeDef status = HAL_CRC_Init(&hcrc);
	LOG_DBG("HAL_CRC_Init = %d", status);

	uint32_t crc = HAL_CRC_Calculate(&hcrc, array, 2);
	LOG_DBG("HAL_CRC_Calculate = %d", crc);
}

void ll_drivers_crc(void)
{
	CRC_TypeDef *crc = CRC;
	LOG_DBG("crc = %x", (uint32_t) crc);

	__HAL_RCC_CRC_CLK_ENABLE();

	LL_CRC_ResetCRCCalculationUnit(crc);

	for (uint32_t i = 0; i < 2; i++) {
		LL_CRC_FeedData32(crc, array[i]);
	}
	
	uint32_t val = LL_CRC_ReadData32(crc);
	LOG_DBG("LL_CRC_ReadData32 = %d", val);
}

int main(void)
{
	k_sleep(K_SECONDS(1));
	zephyr_drivers_crc();
	ll_drivers_crc();
	hal_drivers_crc();

	// ipc_initialize();

	// for (;;)
	// {
	// 	k_sleep(K_SECONDS(1));
	// }
	
	return 0;
}