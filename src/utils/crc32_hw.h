#ifndef _CRC32_HW_H_
#define _CRC32_HW_H_

#include <stdint.h>
#include <stddef.h>

uint32_t crc_calculate32(uint32_t *buf, size_t len);

#endif /* _CRC32_HW_H_ */