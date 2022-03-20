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

#include "ipc_frame.h"

bool ipc_is_initialized(void);

int ipc_initialize(void);

int ipc_attach_rx_msgq(struct k_msgq *msgq);

void ipc_log_frame(const ipc_frame_t *frame);

// int ipc_attach_fifo(struct k_fifo *fifo);

#endif /* _IPC_H_ */