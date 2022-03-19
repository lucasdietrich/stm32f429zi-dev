/**
 * @file ipc.h
 * @author Dietrich Lucas (ld.adecy@gmail.com)
 * @brief 
 * @version 0.1
 * @date 2022-03-19
 * 
 * @copyright Copyright (c) 2022
 * 
 * SFD : Start Frame Delimiter
 * EFD : End Frame Delimiter
 * 
 */

#ifndef _IPC_H_	
#define _IPC_H_

#include <kernel.h>

#define IPC_VERSION 1

#define IPC_MAX_DATA_SIZE 0x10U

#define FROM_UINT32_FROM_BYTE(byte) ((uint32_t) (((byte) & 0xFFU) \
	| (((byte) & 0xFFU) << 8U) \
	| (((byte) & 0xFFU) << 16U) \
	| (((byte) & 0xFFU) << 24U)))

#define IPC_START_FRAME_DELIMITER_BYTE 0xAAU
#define IPC_START_FRAME_DELIMITER FROM_UINT32_FROM_BYTE(IPC_START_FRAME_DELIMITER_BYTE)
#define IPC_START_FRAME_DELIMITER_SIZE sizeof(IPC_START_FRAME_DELIMITER)

#define IPC_END_FRAME_DELIMITER_BYTE 0x55U
#define IPC_END_FRAME_DELIMITER FROM_UINT32_FROM_BYTE(IPC_END_FRAME_DELIMITER_BYTE)
#define IPC_END_FRAME_DELIMITER_SIZE sizeof(IPC_END_FRAME_DELIMITER)

#define IPC_FRAME_SIZE sizeof(ipc_frame_t)

typedef struct {
	uint16_t size;
	uint8_t buf[IPC_MAX_DATA_SIZE];
} __attribute__((packed)) ipc_data_t;

typedef struct {
	uint32_t start_delimiter;
	uint32_t seq;
	ipc_data_t data;
	uint32_t crc32;
	uint32_t end_delimiter;
} __attribute__((packed)) ipc_frame_t;


bool ipc_is_initialized(void);

int ipc_initialize(void);

int ipc_attach_msgq(struct k_msgq *msgq);

// int ipc_attach_fifo(struct k_fifo *fifo);

void ipc_log_frame(const ipc_frame_t *frame);

#endif /* _IPC_H_ */