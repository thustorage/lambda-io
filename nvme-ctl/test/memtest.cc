#include <UioDev.hh>
#include <hw_mmap.h>
#include <hw_cdma.hh>
#include <mem_util.h>
#include <config.h>
#include <sys/mman.h>

#define SIZE_BYTES (2ul << 20)
#define BATCH_BYTES (8192)

int main()
{
    init_maps();
    cdma_init(NR_CDMA_DEVS);

    MEM_WRITE32(map_dram_base_addr + (1ul << 20), 0x87654321);
    MEM_WRITE32(map_dram_base_addr, 0x12345678);
    printf("0x%x\n", MEM_READ32(map_dram_base_addr));

    dc_clean(map_dram_base_addr, 4096);
//    dc_clean_and_inval(map_dram_base_addr + (1ul << 20), 4096);
    barrier();

    double ts = wall_time_ns();
    dc_clean_and_inval(map_dram_base_addr + (1ul << 20), 64);
    printf("%.2lf\n", wall_time_ns() - ts);
    dc_clean_and_inval(map_dram_base_addr + (1ul << 20), 64);

    printf("writing ddr\n");
    std::cout << std::hex << MEM_READ32(map_ddr_base_addr) << std::endl;
    ts = wall_time_ns();
    MEM_WRITE32(map_ddr_base_addr, 0x12345678);
    printf("%.2lf\n", wall_time_ns() - ts);

    printf("cleaning...\n");
    dc_clean(map_ddr_base_addr, 4096);
    printf("done\n");

    return 0;

    printf("hello\n");
    cdma_by_tid(0)->reset(false);
    cdma_by_tid(0)->call_simple(DRAM_BASE_ADDR + (1ul << 20), DRAM_BASE_ADDR, 4096);
    printf("ddr\n");
    cdma_by_tid(0)->call_simple(DDR_BASE_ADDR, DRAM_BASE_ADDR, 4096);



    printf("0x%x\n", MEM_READ32(map_dram_base_addr + (1ul << 20)));

    return 0;
}
