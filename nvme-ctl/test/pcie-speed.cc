#include <iostream>
#include <hw_mmap.h>
#include <hw_cdma.hh>
#include <util.h>
#include <thread>

#define SIZE_MB (1ull << 10)
#define SIZE_BYTES (SIZE_MB << 20)
#define BATCH_BYTES (128ul << 10)
#undef NR_THREADS
#define NR_THREADS 2
void run_test(int tid)
{
    double ts = wall_time_ns();

    for (uint64_t i = 0; i < SIZE_BYTES; i += BATCH_BYTES) {
        cdma_by_tid(tid)->call_simple(DDR_BASE_ADDR + i + tid * SIZE_BYTES,
                                    PCIE_EP_OB_BASE_ADDR + (8ul << 30) + i + tid * SIZE_BYTES,
                                    BATCH_BYTES);
    }

    double elapsed = wall_time_ns() - ts;
    double bw_mbps = SIZE_MB * 1.e9 / elapsed;
    printf("[%d]: Bandwidth=%.2lfMB/s\n", tid, bw_mbps);
}

int main()
{
    init_maps();
    cdma_init(NR_CDMA_DEVS);

    std::thread threads[NR_THREADS];

    double ts = wall_time_ns();

    for (int i = 0; i < NR_THREADS; i++) {
        threads[i] = std::thread(run_test, i);
    }
    for (int i = 0; i < NR_THREADS; i++) {
        threads[i].join();
    }

    double elapsed = wall_time_ns() - ts;
    double bw_mbps = NR_THREADS * SIZE_MB * 1.e9 / elapsed;
    printf("Total Bandwidth=%.2lfMB/s\n", bw_mbps);

    return 0;
}