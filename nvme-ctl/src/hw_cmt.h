/**
 * OpenExpress - Fully Hardware Automated Open Research Framework for Future
 *               Fast NVMe Devices
 *
 * Copyright (c) 2020 CAMELab.org. All rights reserved.
 *
 * OpenExpress License 0.1.
 *
 * OpenExpress is provided for 鈥渁cademic research鈥� and 鈥渘on-commercial鈥�
 * purposes. Here, OpenExpress means the hardware source code, documents, etc.
 * that you can download from a link given by https://openexpress.camelab.org.
 * One of the main purposes of sharing OpenExpress's hardware IP cores is to be
 * an educational reference point for academic researchers, and the author
 * doesn't want to implicitly and/or explicitly have an impact on industry
 * business and complicated situation behind them.
 *
 * The author thus does allow downloading OpenExpress "only" from the designated
 *  website, and permit to examine and do any activities on OpenExpress (such as
 *  use/modify) for "only the one" who is successfully verified and agrees on
 * this End User License Agreement. OpenExpress is protected by one or more
 * patents. Note that all use cases of OpenExpress without registration at
 *  https://openexpress.camelab.org will be in violation of the law.
 *
 * The academic users (permitted) to download OpenExpress require understanding
 * that any form of non-permitted distribution, including a variation and
 * reproduction of the original OpenExpress version (you downloaded), is not
 * allowed. If a user left a university program, any local copy of OpenExpress
 * should be removed. OpenExpress is provided as is without warranty of any
 * kind, express, or implied.  In no event shall the author be liable for any
 * claim, damages or other liability whether in an action of contract, tort or
 * other liability, otherwise, arising from, out of or in connection with
 * OpenExpress or the use or other dealings with OpenExpress.
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of OpenExpress.
 */

#ifndef __HW_CMT_H__
#define __HW_CMT_H__
#include "hw_mmap.h"
#include "nvme_controller.h"
#ifdef __cplusplus
extern "C" {
#endif
#define CMT_REG_OB_BASE_ADDR_LOW 	 (CMT_REG_BASE + 0x80) //	(0x445000080)//(0x45000080)
#define CMT_REG_OB_BASE_ADDR_HIGH 	 (CMT_REG_BASE + 0x84) //	(0x445000084)


typedef struct _CMT_CONTEXT_T
{
	UINT16 phase_tag[NUM_NVME_IO_CQ];
} CMT_CONTEXT_T;


void cmt_init(void);
void cmt_set_delay(UINT32 value);
UINT32 cmt_send_completion(nvme_sq_entry_t* sq_entry, nvme_cq_entry_t* cq_entry);


#ifdef __cplusplus
}
#endif

#endif 	//__HW_CMT_H__


