#include "hw_mmap.h"
#include <UioDev.hh>

char *map_cdma_base_addr[NR_CDMA_DEVS];
char *map_pcie_bar0_base_addr;
char *map_fet_reg_base;
char *map_pcie_ep_base;
char *map_cmt_reg_base;
char *map_sram_base_addr;
char *map_dram_base_addr;
char *map_irq_base_addr;
char *map_mm2s_reg_base;
char *map_ctx_reg_base_addr;
char *map_ddr_base_addr;

std::unique_ptr<UioDev> cdma_uio[NR_CDMA_DEVS];
std::unique_ptr<CtxDev> ctx;
std::unique_ptr<UioDev> fet;
std::unique_ptr<UioDev> cmt;
std::unique_ptr<UioDev> pcie_ep;
std::unique_ptr<UioDev> sram;
std::unique_ptr<UioDev> dram;
std::unique_ptr<UioDev> irq;
std::unique_ptr<UioDev> mm2s;
std::unique_ptr<UioDev> ddr;

hybrid_addr_t dram_base_addr;
hybrid_addr_t ddr_base_addr;
hybrid_addr_t bram_base_addr;

int init_maps(void)
{
    UioDev::scan_all();
    UioDev::print_all();

    for (int i = 0; i < NR_CDMA_DEVS; i++) {
        cdma_uio[i] = std::make_unique<UioDev>("cdma");
        map_cdma_base_addr[i] = (char *)cdma_uio[i]->getAddr();
    }

#if 1
    ctx = std::make_unique<CtxDev>();
#if BITSTREAM_VERSION == DAISY_P8C2
    map_pcie_bar0_base_addr = (char *)ctx->getAddr1();
    map_ctx_reg_base_addr = (char *)ctx->getAddr();
#else
    map_pcie_bar0_base_addr = (char *)ctx->getAddr();
    map_ctx_reg_base_addr = (char *)ctx->getAddr1();
#endif

    fet = std::make_unique<UioDev>("fet");
    map_fet_reg_base = (char *)fet->getAddr();

    cmt = std::make_unique<UioDev>("cmt");
    map_cmt_reg_base = (char *)cmt->getAddr();

    pcie_ep = std::make_unique<UioDev>("pcie-ep");
    map_pcie_ep_base = (char *)pcie_ep->getAddr();

    irq = std::make_unique<UioDev>("intx");
    map_irq_base_addr = (char *)irq->getAddr();

    mm2s = std::make_unique<UioDev>("mm2s");
    map_mm2s_reg_base = (char *)mm2s->getAddr();
#endif

    sram = std::make_unique<UioDev>("bram");
    map_sram_base_addr = (char *)sram->getAddr();
    dram = std::make_unique<UioDev>("dramdev");
    map_dram_base_addr = (char *)dram->getAddr();
#if BITSTREAM_VERSION == PLUS_P8C2
    ddr = std::make_unique<UioDev>("ddrdev");
#else
    ddr = std::make_unique<UioDev>("ddrdev0");
#endif


    map_ddr_base_addr = (char *)ddr->getAddr();

    dram_base_addr = {DRAM_BASE_ADDR, map_dram_base_addr};
    ddr_base_addr = {DDR_BASE_ADDR, map_ddr_base_addr};
    bram_base_addr = {SRAM_BASE_ADDR, map_sram_base_addr};

    UioDev::print_all();

    return 0;
}
