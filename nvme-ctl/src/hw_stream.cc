#include <xlnx/xllfifo.h>
#include "hw_stream.h"
#include <mutex>
//#include <xparameters.h>
#include "hw_mmap.h"

XLlFifo fifo;
std::mutex fifo_mutex;

void stream_init()
{
	int status;
	pr_debug("");
	XLlFifo_Initialize(&fifo, (UINTPTR)map_mm2s_reg_base);
	status = XLlFifo_Status(&fifo);
	XLlFifo_IntClear(&fifo, 0xffffffff);
	status = XLlFifo_Status(&fifo);
	mb();
	if (status) {
		printf("XLlFifo_Status=%d\n", XLlFifo_Status(&fifo));
		exit(1);
	}
}

int stream_get_sqe(volatile UINT32 *buff, int len)
{
	int pos = 0;
	assert(len == 16); // 16 dwords, 64 bytes

	const std::lock_guard<std::mutex> lock(fifo_mutex);

	while (XLlFifo_iRxOccupancy(&fifo)) {
		int recv_length = (int)(XLlFifo_iRxGetLen(&fifo) / sizeof(UINT32));
//		printf("recv_length=%u\n", recv_length);
		for (int i = 0; i < recv_length; i++) {
			UINT32 RxWord = XLlFifo_RxGetWord(&fifo);
//			printf("buff[%d]=%u\n", pos, RxWord);
			buff[pos++] = RxWord;
			if (pos >= len) {
				return TRUE;
			}
		}
	}

	return FALSE;
}

void stream_put_cqe(UINT32 *buff)
{
    const std::lock_guard<std::mutex> lock(fifo_mutex);

	for (UINT32 i = 0; i < 4; i++) {
		if (XLlFifo_iTxVacancy(&fifo)) {
			XLlFifo_TxPutWord(&fifo, buff[i]);
		}
	}
	XLlFifo_iTxSetLen(&fifo, 16);  // 16 bytes, 4 words
}
