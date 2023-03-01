#include <hw_mmap.h>
#include <hw_cdma.hh>
#include <UioDev.hh>
#include <hw_ddr.h>
#define SIZE_MB 256ul
#define SIZE_BYTES (SIZE_MB << 20)
#define BATCH_BYTES (1 << 20)
#undef NR_THREADS
#define NR_THREADS 4

void run_test(int tid)
{
    double ts = wall_time_ns();

    for (uint64_t i = 0; i < SIZE_BYTES; i += BATCH_BYTES) {
        addr_list_t dram_addr {DRAM_BASE_ADDR + i + SIZE_BYTES * tid};
        addr_list_t dimm_addr {DDR_BASE_ADDR + i + SIZE_BYTES * tid};
        cdma_by_tid(tid)->xfer_dram(dimm_addr, dram_addr, BATCH_BYTES / SZ_4K, tid, AxiCdmaDev::FIX_NONE);
    }

    double elapsed = wall_time_ns() - ts;
    double bw_mbps = SIZE_MB * 1.e9 / elapsed;
    printf("[%d]: Bandwidth=%.2lfMB/s\n", tid, bw_mbps);
}

int main()
{
    init_maps();
    cdma_init(1);
//    ddr_init();

    std::thread threads[NR_THREADS];

    double ts = wall_time_ns();

    for (int i = 0; i < NR_THREADS; i++) {
        threads[i] = std::thread(run_test, i);
    }
    for (int i = 0; i < NR_THREADS; i++) {
        threads[i].join();
    }

    double elapsed = wall_time_ns() - ts;
    double bw_mbps = NR_THREADS * (SIZE_MB) * 1.e9 / elapsed;
    printf("Total Bandwidth=%.2lfMB/s\n", bw_mbps);
    return 0;
}
