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


#ifndef __PCIE_H__
#define __PCIE_H__

#ifdef __cplusplus
extern "C" {
#endif

#define PCIE_EP_MSIX_TABLE_BASE_ADDR	(0x4C0002000)//(0xC0002000)

#define PCIE_EP_PM_CAP_OFFSET			(0x40)
#define PCIE_EP_MSIX_CAP_OFFSET			(0x60)
#define PCIE_EP_PCIE_CAP_OFFSET			(0x70)

#define PCIE_EP_CAP_ID_PM				(0x01)
#define PCIE_EP_CAP_ID_MSIX				(0x11)
#define PCIE_EP_CAP_ID_PCIE				(0x10)


#define FET_PCIE_IRQ_REG_OFFSET_PULSE_LEVEL_SELECT		(0x00)
#define FET_PCIE_IRQ_REG_OFFSET_LEVEL_SET				(0x40)
#define FET_PCIE_IRQ_REG_OFFSET_PULSE_TRIGGER			(0x80)
#define FET_PCIE_IRQ_REG_OFFSET_GRANT_STATUS			(0xC0)

#define FET_PCIE_IRQ_REG_ADDR_PULSE_LEVEL_SELECT		(PCIE_IRQ_BASE_ADDR + FET_PCIE_IRQ_REG_OFFSET_PULSE_LEVEL_SELECT)
#define FET_PCIE_IRQ_REG_ADDR_LEVEL_SET					(PCIE_IRQ_BASE_ADDR + FET_PCIE_IRQ_REG_OFFSET_LEVEL_SET)
#define FET_PCIE_IRQ_REG_ADDR_PULSE_TRIGGER				(PCIE_IRQ_BASE_ADDR + FET_PCIE_IRQ_REG_OFFSET_PULSE_TRIGGER)
#define FET_PCIE_IRQ_REG_ADDR_GRANT_STATUS				(PCIE_IRQ_BASE_ADDR + FET_PCIE_IRQ_REG_OFFSET_GRANT_STATUS)


typedef union _PCIE_EP_MSIX_CAP_T
{
	UINT32 dw[3];

	struct
	{
		UINT32 capability_id : 8;
		UINT32 next_pointer : 8;
		UINT32 table_size : 11;
		UINT32 rsvd1 : 3;
		UINT32 function_mask : 1;
		UINT32 msi_x_enable : 1;

		UINT32 table_bir : 3;
		UINT32 table_offset : 29;

		UINT32 pba_bir : 3;
		UINT32 pba_offset : 29;
	};
} PCIE_EP_MSIX_CAP_T;


typedef union _PCIE_MSIX_ENTRY
{
	UINT32 dw[4];

	struct
	{
		UINT32 address[2];
		UINT32 message_data;
		UINT32 vector_control;
	};
} PCIE_MSIX_ENTRY;




UINT32 pcie_ep_msix_enabled(void);
PCIE_MSIX_ENTRY* pcie_ep_get_msix_entry(UINT32 index);

#ifdef __cplusplus
}
#endif
#endif 	//__PCIE_H__

