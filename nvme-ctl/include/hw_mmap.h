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

#ifndef __MEMORY_MAP_H__
#define __MEMORY_MAP_H__
#ifdef __cplusplus
extern "C" {
#endif
#include <xparameters.h>
#include <basic.h>
#include <addr.hh>
#include <config.h>
//#define GPIO_BASE_ADDR					(0x40000000UL)
//#define UART_BASE_ADDR					(0x40600000UL)
//#define CDMA_BASE_ADDR                    XPAR_AXI_CDMA_0_BASEADDR //(0x44A00000UL)
//#define CDMA_BASE_ADDR              map_cdma_base_addr
extern char *map_cdma_base_addr[NR_CDMA_DEVS];

#define PCIE_IRQ_BASE_ADDR          map_irq_base_addr
extern char *map_irq_base_addr;
//#define PCIE_IRQ_BASE_ADDR                XPAR_INTX_MSI_HANDLER_0_BASEADDR //(0x76000000UL)
//#define PCIE_BAR0_BASE_ADDR                (0x4C0000000UL)//(0xC0000000UL)
extern char *map_pcie_bar0_base_addr;
#define PCIE_BAR0_BASE_ADDR         map_pcie_bar0_base_addr
extern char *map_ctx_reg_base_addr;
#define CTX_REG_BASE_ADDR           map_ctx_reg_base_addr

//#define PCIE_EP_BASE                    0x480000000 //(0x10000000)
#define PCIE_EP_BASE                map_pcie_ep_base
extern char *map_pcie_ep_base;
#define PCIE_EP_OB_BASE_ADDR_LOW        (0x0UL)
#define PCIE_EP_OB_BASE_ADDR_HIGH        (0x100UL)
#define PCIE_EP_OB_BASE_ADDR            ((PCIE_EP_OB_BASE_ADDR_HIGH << 32) + PCIE_EP_OB_BASE_ADDR_LOW)

#define FET_REG_BASE                map_fet_reg_base
extern char *map_fet_reg_base;

#define CMT_REG_BASE                map_cmt_reg_base
extern char *map_cmt_reg_base;

#define MAP_MM2S_REG_BASE               map_mm2s_reg_base
extern char *map_mm2s_reg_base;

#if BITSTREAM_VERSION == DAISY_P8C1
#define SRAM_BASE_ADDR                    (0x4e0000000UL)
#define DDR_BASE_ADDR                   0x1000000000ul
#elif BITSTREAM_VERSION == DAISY_P8C2
#define SRAM_BASE_ADDR                    (0xB0000000UL)
#define DDR_BASE_ADDR                  0x4800000000ul
#elif BITSTREAM_VERSION == PLUS_P8C2
#define SRAM_BASE_ADDR                    (0xB0000000UL)
#define DDR_BASE_ADDR                  0x5000000000ul
#else
#error "unkown BITSTREAM_VERSION"
#endif
#define DDR_SIZE_BYTES                  (64ul << 30)

extern char *map_sram_base_addr;
#define MAP_SRAM_BASE_ADDR               map_sram_base_addr

//#define DMA_MSIX_BUF_ADDR               (DMA_PRP_BUF_ADDR)
#define DMA_REGION_SIZE                    (64ul << 20)

// for admin. admin never uses prp buffer
//#define dma_base_addr(i)                 (DRAM_BASE_ADDR + (i) * DMA_REGION_SIZE)

#define DRAM_BASE_ADDR                  0x40000000ul // 1GB
extern char *map_dram_base_addr;
extern char *map_ddr_base_addr;

#define CDMA1_DRAM_OFFSET               (2ul << 30)

extern hybrid_addr_t dram_base_addr;
extern hybrid_addr_t ddr_base_addr;
extern hybrid_addr_t bram_base_addr;
#define dma_base_addr(i) (dram_base_addr + (i) * DMA_REGION_SIZE)
#define dma_prp_addr(i) dma_base_addr(i)
#define dma_sgl_addr(i) (dma_base_addr(i) + SZ_1M)
#define dma_buf_addr(i) (dma_base_addr(i) + SZ_4M) // data buffer
#define dma_lio_addr(i)  (dma_buf_addr(i) + SZ_16M) // lio output
#define dma_lba_addr(i) (dma_lio_addr(i) + SZ_16M)

#define USER_SLICE_BITS     12
typedef union {
    uint64_t ddw;
    struct {
        uint64_t pg_ofst : USER_SLICE_BITS; // 4KB
        uint64_t ddr_id : 1;
        uint64_t ddr_off : (63 - USER_SLICE_BITS);
    };
} buf_addr_t;

static inline uint64_t user_buf_to_dev(uint64_t buf_addr)
{
//    buf_addr_t addr = { .ddw = buf_addr };
//    uint64_t base_addr = addr.ddr_id == 0 ? DIMM0_BASE_ADDR : DIMM1_BASE_ADDR;
//    addr.ddr_id = 0;
//    return base_addr + (addr.ddr_off << USER_SLICE_BITS);

    return DDR_BASE_ADDR + buf_addr;
}

int init_maps(void);
#ifdef __cplusplus
}
#endif
#endif 	//__MEMORY_MAP_H__
