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


#include "fw_common.h"
#include "hw_pcie.h"

UINT32 pcie_ep_msix_enabled(void)
{
	PCIE_EP_MSIX_CAP_T* msix_cap = (PCIE_EP_MSIX_CAP_T*)(PCIE_EP_BASE + PCIE_EP_MSIX_CAP_OFFSET);
//	UINT32 dw0 = MEM_READ32((char *)msix_cap);
//	pr_debug("msxi_cap->dword[0]=0x%x", dw0);
//	pr_debug("msix_cap->capability_id=0x%x, msi_x_enable=%d\n", msix_cap->capability_id, msix_cap->msi_x_enable);
	assert(msix_cap->capability_id == PCIE_EP_CAP_ID_MSIX);

	return msix_cap->msi_x_enable;
}

PCIE_MSIX_ENTRY* pcie_ep_get_msix_entry(UINT32 index)
{
	PCIE_MSIX_ENTRY* msix_entry = (PCIE_MSIX_ENTRY*)(PCIE_EP_MSIX_TABLE_BASE_ADDR) + index;

	return msix_entry;
}


