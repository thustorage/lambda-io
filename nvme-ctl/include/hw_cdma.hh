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


#ifndef __HW_CDMA_H__
#define __HW_CDMA_H__
#include <basic.h>
#include <addr.hh>
#include <mutex>
#include <memory>
#include <vector>

#define AXI_CDMA_REG_OFFSET_CONTROL				(0x00)
#define AXI_CDMA_REG_OFFSET_STATUS				(0x04)
#define AXI_CDMA_REG_OFFSET_CURDESC_PNTR		(0x08)
#define AXI_CDMA_REG_OFFSET_CURDESC_PNTR_MSB	(0x0C)
#define AXI_CDMA_REG_OFFSET_TAILDESC_PNTR		(0x10)
#define AXI_CDMA_REG_OFFSET_TAILDESC_PNTR_MSB	(0x14)
#define AXI_CDMA_REG_OFFSET_SA					(0x18)
#define AXI_CDMA_REG_OFFSET_SA_MSB				(0x1C)
#define AXI_CDMA_REG_OFFSET_DA					(0x20)
#define AXI_CDMA_REG_OFFSET_DA_MSB				(0x24)
#define AXI_CDMA_REG_OFFSET_BTT					(0x28)

//#define AXI_CDMA_REG_ADDR_CONTROL				(CDMA_BASE_ADDR + AXI_CDMA_REG_OFFSET_CONTROL)
//#define AXI_CDMA_REG_ADDR_STATUS				(CDMA_BASE_ADDR + AXI_CDMA_REG_OFFSET_STATUS)
//#define AXI_CDMA_REG_ADDR_CURDESC_PNTR			(CDMA_BASE_ADDR + AXI_CDMA_REG_OFFSET_CURDESC_PNTR)
//#define AXI_CDMA_REG_ADDR_CURDESC_PNTR_MSB		(CDMA_BASE_ADDR + AXI_CDMA_REG_OFFSET_CURDESC_PNTR_MSB)
//#define AXI_CDMA_REG_ADDR_TAILDESC_PNTR			(CDMA_BASE_ADDR + AXI_CDMA_REG_OFFSET_TAILDESC_PNTR)
//#define AXI_CDMA_REG_ADDR_TAILDESC_PNTR_MSB		(CDMA_BASE_ADDR + AXI_CDMA_REG_OFFSET_TAILDESC_PNTR_MSB)
//#define    AXI_CDMA_REG_ADDR_SA					(CDMA_BASE_ADDR + AXI_CDMA_REG_OFFSET_SA)
//#define AXI_CDMA_REG_ADDR_SA_MSB				(CDMA_BASE_ADDR + AXI_CDMA_REG_OFFSET_SA_MSB)
//#define AXI_CDMA_REG_ADDR_DA					(CDMA_BASE_ADDR + AXI_CDMA_REG_OFFSET_DA)
//#define AXI_CDMA_REG_ADDR_DA_MSB				(CDMA_BASE_ADDR + AXI_CDMA_REG_OFFSET_DA_MSB)
//#define AXI_CDMA_REG_ADDR_BTT					(CDMA_BASE_ADDR + AXI_CDMA_REG_OFFSET_BTT)

typedef union _axi_cdma_reg_control_t
{
	UINT32	dw;

	struct
	{
		UINT32	Reserved0			:1;
		UINT32	TailPntrEn			:1;
		UINT32	Reset				:1;
		UINT32	SGMode				:1;
		UINT32	Key_Hole_Read		:1;
		UINT32	Key_Hole_Write		:1;
		UINT32	Cyclic_BD_Enable	:1;
		UINT32	Reserved1			:5;
		UINT32	IOC_IrqEn			:1;
		UINT32	Dly_IrqEn			:1;
		UINT32	Err_IrqEn 			:1;
		UINT32	Reserved2			:1;

		UINT32	IRQThreshold 		:8;
		UINT32	IRQDelay  			:8;
	};
} axi_cdma_reg_control_t;

typedef union _axi_cdma_reg_status_t
{
	UINT32	dw;

	struct
	{
		UINT32	Reserved0			:1;
		UINT32	Idle				:1;
		UINT32	Reserved1			:1;
		UINT32	SGIncld				:1;
		UINT32	DMAIntErr			:1;
		UINT32	DMASlvErr			:1;
		UINT32	DMADecErr			:1;
		UINT32	Reserved2			:1;

		UINT32	SGIntErr			:1;
		UINT32	SGSlvErr			:1;
		UINT32	SGDecErr			:1;
		UINT32	Reserved3			:1;
		UINT32	IOC_Irq				:1;
		UINT32	Dly_Irq				:1;
		UINT32	Err_Irq				:1;
		UINT32	Reserved			:1;

		UINT32	IRQThresholdSts		:8;
		UINT32	IRQDelaySts			:8;
	};
} axi_cdma_reg_status_t;

union sgd_t {
    uint64_t ddw[16]; //  8 * 16 = 128B
    struct {
        uint64_t next;
        uint64_t src;
        uint64_t dst;
        uint32_t size;
        uint32_t status;
    };
};

//void axi_cdma_check_idle();
//void axi_cdma_control_sg(bool enable);
//void axi_cdma_wait_for_completion();
//
//void axi_cdma_init(void);
//void axi_cdma_reset(bool enable_sg);
//
//void axi_cdma_pcie_upstream(UINT64 pcie_addr, UINT64 device_addr, UINT32 byte_len);
//void axi_cdma_pcie_downstream(UINT64 device_addr, UINT64 pcie_addr, UINT32 byte_len);
//
//void dma_raw_upstream(UINT64 pcie_addr_list[2], UINT64 device_addr, UINT32 byte_len);
//void dma_raw_downstream(UINT64 device_addr, UINT64 pcie_addr_list[2], UINT32 byte_len);
//
//void axi_cdma_call_simple(uint64_t da, uint64_t sa, uint32_t btt);
//
//void axi_cdma_pcie_prp_data(UINT64 buf_addr, UINT64 pcie_addr, UINT32 byte_len, UINT32 is_downstream);
//void axi_cdma_xfer(addr_list_t dst, addr_list_t src, uint32_t nr_sectors, int tid);

class AxiCdmaDev {
private:
    char *base_addr_;
    int id_;
    std::mutex mutex_;
    char *reg_control() { return base_addr_ + AXI_CDMA_REG_OFFSET_CONTROL; }
    char *reg_status() { return base_addr_ + AXI_CDMA_REG_OFFSET_STATUS; }
    char *reg_curdesc_pntr() { return base_addr_ + AXI_CDMA_REG_OFFSET_CURDESC_PNTR; }
    char *reg_curdesc_pntr_msb() { return base_addr_ + AXI_CDMA_REG_OFFSET_CURDESC_PNTR_MSB; }
    char *reg_taildesc_pntr() { return base_addr_ + AXI_CDMA_REG_OFFSET_TAILDESC_PNTR; }
    char *reg_taildesc_pntr_msb() {  return base_addr_ + AXI_CDMA_REG_OFFSET_TAILDESC_PNTR_MSB; }
    char *reg_sa() { return base_addr_ + AXI_CDMA_REG_OFFSET_SA; }
    char *reg_sa_msb() { return base_addr_ + AXI_CDMA_REG_OFFSET_SA_MSB; }
    char *reg_da() { return base_addr_ + AXI_CDMA_REG_OFFSET_DA; }
    char *reg_da_msb() { return base_addr_ + AXI_CDMA_REG_OFFSET_DA_MSB; }
    char *reg_btt() { return base_addr_ + AXI_CDMA_REG_OFFSET_BTT; }

public:
    static std::shared_ptr<AxiCdmaDev> cdma_devs[NR_CDMA_DEVS];
    static int nr_cdma_devs;

    enum FixDram {
        FIX_NONE = 0x0,
        FIX_DST = 0x1,
        FIX_SRC = 0x2,
        FIX_BOTH = FIX_DST | FIX_SRC,
    };

    AxiCdmaDev(char *base_addr, int id) : base_addr_(base_addr), id_(id) {}
    void check_idle();
    void control_sg(bool enable);
    int wait_for_completion();

    void init(void);
    void reset(bool enable_sg);

    void pcie_upstream(UINT64 pcie_addr, UINT64 device_addr, UINT32 byte_len);
    void pcie_downstream(UINT64 device_addr, UINT64 pcie_addr, UINT32 byte_len);

    void raw_upstream(UINT64 pcie_addr_list[2], UINT64 device_addr, UINT32 byte_len);
    void raw_downstream(UINT64 device_addr, UINT64 pcie_addr_list[2], UINT32 byte_len);

    int call_simple(uint64_t da, uint64_t sa, uint32_t btt, bool handle_error = false);
    int call_sg(uint64_t curdesc, uint64_t taildesc);

    void pcie_prp_data(UINT64 buf_addr, UINT64 pcie_addr, UINT32 byte_len, UINT32 is_downstream);
    void xfer(addr_list_t dst, addr_list_t src, uint32_t nr_sectors, int tid);

    void xfer_dram(addr_list_t dst, addr_list_t src, uint32_t nr_sectors, int tid, FixDram fix);
};

void cdma_init(int nr_cdma_devs);
//#define cdma_by_tid(tid) (AxiCdmaDev::cdma_devs[tid % NR_CDMA_DEVS])
//#define cdma_by_id(id) (AxiCdmaDev::cdma_devs[id])
std::shared_ptr<AxiCdmaDev> cdma_by_tid(int tid);
std::shared_ptr<AxiCdmaDev> cdma_by_id(int id);
#endif 	//__HW_CDMA_H__
