/**
 * OpenExpress - Fully Hardware Automated Open Research Framework for Future
 *               Fast NVMe Devices
 *
 * Copyright (c) 2020 CAMELab.org. All rights reserved.
 *
 * OpenExpress License 0.1.
 *
 * OpenExpress is provided for “academic research” and “non-commercial”
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


#ifndef __NVME_CONTROLLER_H__
#define __NVME_CONTROLLER_H__
#ifdef __cplusplus
extern "C" {
#endif

#define ENABLE_RW_POSTING_TO_CPU 				(TRUE)



#define NUM_NVME_IO_SQ			(32)
#define NUM_NVME_IO_CQ			(32)


#define NUM_NVME_SQ				(NUM_NVME_IO_SQ + 1)
#define NUM_NVME_CQ				(NUM_NVME_IO_CQ + 1)


#define SIZE_NVME_SQ			(0x1F)
#define SIZE_NVME_CQ			(SIZE_NVME_SQ)


#define INDEX_ADMIN_QUEUE			(0)


void nvme_controller_reg_init(void);

UINT16 check_cc_en(void);
UINT32 enable_nvme_controller(void);
UINT32 fetch_sq_entry(volatile nvme_sq_entry_t* sq_entry);
void nvme_reg_csts_rdy_set(UINT32 ready);

#ifdef __cplusplus
}
#endif

#endif 	//__NVME_CONTROLLER_H__

