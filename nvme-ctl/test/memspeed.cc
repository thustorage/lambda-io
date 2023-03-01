#include <UioDev.hh>
#include <hw_mmap.h>
#include <libbpf.h>
#include <hw_ddr.h>
#include <hw_cdma.hh>

#define SIZE_STRIPE_BYTES (128ul << 20)
#define SIZE_MB 16
#define SIZE_BYTES (SIZE_MB << 20)
#define BATCH_BYTES 256 // (16ul << 10)
#define SZ_128M (128ul << 20)
#undef NR_THREADS
#define NR_THREADS 4

struct context {
    void *buf_o;
    void *buf_i;
    size_t size_i;
};

static void run_func(int tid)
{
    double ts, elapsed, bw_mbps;
    // run tests
    for (int run = 0; run < 1; run++) {
//        dc_clean_and_inval(dram_base_addr.virt, SIZE_BYTES);
        int64_t sum = 0;
        char buf[4096];
//        int64_t *array = (int64_t *)dma_lio_addr(tid).virt;
        ts = wall_time_ns();
//        addr_list_t lio_addrs = addr_list_t{dma_lio_data_addr(tid).phys};
//        addr_list_t lba_addrs = addr_list_t{ddr0_base_addr.phys + tid * SIZE_BYTES};
//        cdma_by_tid(tid)->xfer(lio_addrs, lba_addrs, SIZE_BYTES / SZ_4K, tid);
#if 1
        struct context ctx = {buf, dma_lio_addr(tid).virt, SIZE_BYTES };
        sum = uebpf_run(0, &ctx);
#else
        for (uint64_t i = 0; i < SIZE_BYTES; i += 4096) {
            memcpy(buf, (char *)dma_lio_addr(tid).virt + i, 4096);
        }
#endif
        printf("sum=%ld\n", sum);
        elapsed = wall_time_ns() - ts;
    }

    bw_mbps = SIZE_MB * 1.e9 / elapsed;
    printf("tid=%d, elapsed=%.2lfns, Bandwidth=%.2lfMB/s\n", tid, elapsed, bw_mbps);
}

int main()
{
    int uebpf_ret = uebpf_load_file("stats.o");
    if (uebpf_ret < 0) {
        std::cerr << "failed ot load" << std::endl;
        exit(EXIT_FAILURE);
    }

    init_maps();
//    cdma_init(NR_CDMA_DEVS);
//    ddr_init();

    std::thread threads[NR_THREADS];

    double ts = wall_time_ns();
    for (int i = 0; i < NR_THREADS; i++) {
        threads[i] = std::thread(run_func, i);
    }

    for (int i = 0; i < NR_THREADS; i++) {
        threads[i].join();
    }
    double elapsed = wall_time_ns() - ts;
    double bw_mbps = SIZE_MB * NR_THREADS * 1.e9 / elapsed;

    printf("elapsed=%.2lfns, Total Bandwidth=%.2lfMB/s\n", elapsed, bw_mbps);

    return 0;
}
