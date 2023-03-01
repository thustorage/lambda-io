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

#include "nvme_struct.h"

#include "hw_fet.h"


void fet_init(void)
{
	pr_debug("");
	MEM_WRITE32(FET_REG_OB_BASE_ADDR_LOW, PCIE_EP_OB_BASE_ADDR_LOW);
	mb();
    pr_debug("0x%x", MEM_READ32(FET_REG_OB_BASE_ADDR_HIGH));
    mb();
//	assert(value == 0x10 || value == PCIE_EP_OB_BASE_ADDR_HIGH);
	MEM_WRITE32(FET_REG_OB_BASE_ADDR_HIGH, PCIE_EP_OB_BASE_ADDR_HIGH);
}

void fet_enable_nvm_cmd_posting_to_htrw(void)
{
	fet_hw_post_opcode_t opcodes;
	opcodes.dw = 0;
	opcodes.htr0_opcode = NVME_NVM_OPCODE_READ;
	opcodes.htw0_opcode = NVME_NVM_OPCODE_WRITE;
	MEM_WRITE32(FET_REG_POST_OPCODE, opcodes.dw);

	fet_hw_post_enable_t enable;
	enable.dw = 0;
	enable.htr0_enable = TRUE;
	enable.htw0_enable = TRUE;
	MEM_WRITE32(FET_REG_POST_OPCODE_EN, enable.dw);

	printf("Read & Write Command will go to HTRW\n");

	MEM_WRITE32(FET_REG_POSTING_EN, 0x10);
}


void fet_disable_nvm_cmd_posting_to_htrw(void)
{
	printf("All NVM Command will go to FW\n");

	MEM_WRITE32(FET_REG_POST_OPCODE_EN, 0x0);
	MEM_WRITE32(FET_REG_POSTING_EN, 0x10);
}



