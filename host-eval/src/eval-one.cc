#include <eval.hh>

int main(int argc, char *argv[])
{
    LmdFuncId lmd_func_id;
    int nr_threads;
    DispatchMode dispatch_mode;
    size_t sz_data;
    size_t sz_batch;

    if (argc == 6) {
        int input_id = atoi(argv[1]);
        if (input_id < 0 || input_id >= (int)NR_LMDFUNCS) {
            printf("input_id: 0-4\n");
            exit(EXIT_FAILURE);
        }
        lmd_func_id = (LmdFuncId)atoi(argv[1]);
        nr_threads = atoi(argv[2]);
        dispatch_mode = (DispatchMode)atoi(argv[3]);
        sz_data = atoll(argv[4]) << 30;
        sz_batch = atoll(argv[5]) << 20;
    } else {
        printf("%s <func: 0-stats64, 1-stats32, 2-knn, 3-grep, 4-bitmap> "
               "<# threads> <mode: 0-ub, 1-ud, 2-um, 3-kern, 4-dev, 5-auto> <SZ_DATA GB> <SZ_BATCH MB>\n", argv[0]);
        exit(EXIT_FAILURE);
    }

    std::string lmd_func_name = kLmdFuncName[lmd_func_id];

    std::unique_ptr<Test> tests[nr_threads];
    std::thread threads[nr_threads];
    partition_t round_robin = [nr_threads](int tid, s64 idx) { return idx % nr_threads == tid; };

    printf("=== Configurations ===\n");
    printf("input file: " INPUT_FILE "\n");
    printf("output file: " OUTPUT_FILE "\n");
    printf("lmd kernel: %s\n", lmd_func_name.c_str());
    printf("SZ_DATA: %ldGB\n", sz_data >> 30);
    printf("SZ_BATCH: %ldMB\n\n", sz_batch >> 20);

    int kbpf_id = kebpf_load_file((lmd_func_name + "-h.o").c_str());
    if (kbpf_id < 0) {
        perror("load kern");
        fprintf(stderr, "load ebpf_kern error! kbpf_id=%d\n", kbpf_id);
        exit(EXIT_FAILURE);
    }
    std::map<LmdFuncId, int> lmd2dbpf = {{STATS64, 0}, {STATS32, 1}, {KNN, 2}, {GREP, 3}, {BITMAP, 4}};
    int dbpf_id = lmd2dbpf[lmd_func_id];
    for (int i = 0; i < nr_threads; i++) {
        tests[i] = std::make_unique<Test>(i);
    }

    std::vector<std::shared_ptr<Config>> configs;
    configs.reserve(nr_threads);
    const char * file = lmd_is_write(lmd_func_id) ? OUTPUT_FILE : INPUT_FILE;
    for (int i = 0; i < nr_threads; i++) {
        configs.emplace_back(std::make_shared<Config>(file, 0, sz_data, sz_batch, dispatch_mode, round_robin, lmd_func_id, kbpf_id, dbpf_id, 0));
    }

    uint64_t ts = wall_time_ns();
    for (int i = 0; i < nr_threads; i++) {
        threads[i] = std::thread(&Test::run_by_config, tests[i].get(), configs[i]);
    }

    for (int i = 0; i < nr_threads; i++) {
        threads[i].join();
    }

    Test::output_result(sz_data >> 20, std::string("all: "), &tests[0], &tests[nr_threads]);

    return 0;
}
