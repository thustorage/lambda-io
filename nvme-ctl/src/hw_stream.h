#ifndef HW_STREAM_H_
#define HW_STREAM_H_
#include "fw_common.h"
#ifdef __cplusplus
extern "C" {
#endif

void stream_init();
int stream_get_sqe(volatile UINT32 *buff, int len);
void stream_put_cqe(UINT32 *buff);

#ifdef __cplusplus
}
#endif
#endif