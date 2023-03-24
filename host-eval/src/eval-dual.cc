#include <eval.hh>

#define SZ_DATA SZ_16G
#define SZ_BATCH SZ_8M

int main(int argc, char *argv[])
{
    DispatchMode mode1, mode2;
    LmdFuncId func1, func2;

    if (argc != 5) {
        printf("%s <func1> <mode1> <func2> <mode2>\n", argv[0]);
        exit(EXIT_FAILURE);
    }

    func1 = (LmdFuncId)atoi(argv[1]);
    mode1 = (DispatchMode)atoi(argv[2]);
    func2 = (LmdFuncId)atoi(argv[3]);
    mode2 = (DispatchMode)atoi(argv[4]);

    std::string func1_file = std::string(kLmdFuncName[func1]) + "-h.o";
    int kbpf_func1 = kebpf_load_file(func1_file.c_str());
    if (kbpf_func1 < 0) {
        perror(func1_file.c_str());
        exit(EXIT_FAILURE);
    }

    std::string func2_file = std::string(kLmdFuncName[func2]) + "-h.o";
    int kbpf_func2 = kebpf_load_file(func2_file.c_str());
    if (kbpf_func2 < 0) {
        perror(func2_file.c_str());
        exit(EXIT_FAILURE);
    }

    auto rr_4 = [](int tid, s64 idx) {
        return idx % 4 == tid % 4;
    };

    std::map<LmdFuncId, int> lmd2kbpf_ {{func1, kbpf_func1}, {func2, kbpf_func2}};
    std::map<LmdFuncId, int> lmd2dbpf_ {{STATS64, 0}, {STATS32, 1}, {KNN, 2}, {GREP, 3}, {BITMAP, 4}};

    int func1_kbpf_id = lmd2kbpf_[func1];
    int func1_dbpf_id = lmd2dbpf_[func1];
    int func2_kbpf_id = lmd2kbpf_[func2];
    int func2_dbpf_id = lmd2dbpf_[func2];
    const char* file1 = lmd_is_write(func1) ? OUTPUT_FILE : INPUT_FILE;
    const char* file2 = lmd_is_write(func2) ? OUTPUT_FILE : INPUT_FILE;

    int64_t start1 = 0;
    int64_t start2 = 0;
    if (!lmd_is_write(func1) && !lmd_is_write(func2)) {
        start2 = SZ_DATA;
    }

    std::vector<std::shared_ptr<Config>> thread_configs {
        std::make_shared<Config>(file1, start1, SZ_DATA, SZ_BATCH, mode1, rr_4, func1, func1_kbpf_id, func1_dbpf_id, 0),
        std::make_shared<Config>(file1, start1, SZ_DATA, SZ_BATCH, mode1, rr_4, func1, func1_kbpf_id, func1_dbpf_id, 0),
        std::make_shared<Config>(file1, start1, SZ_DATA, SZ_BATCH, mode1, rr_4, func1, func1_kbpf_id, func1_dbpf_id, 0),
        std::make_shared<Config>(file1, start1, SZ_DATA, SZ_BATCH, mode1, rr_4, func1, func1_kbpf_id, func1_dbpf_id, 0),
        std::make_shared<Config>(file2, start2, SZ_DATA, SZ_BATCH, mode2, rr_4, func2, func2_kbpf_id, func2_dbpf_id, 1),
        std::make_shared<Config>(file2, start2, SZ_DATA, SZ_BATCH, mode2, rr_4, func2, func2_kbpf_id, func2_dbpf_id, 1),
        std::make_shared<Config>(file2, start2, SZ_DATA, SZ_BATCH, mode2, rr_4, func2, func2_kbpf_id, func2_dbpf_id, 1),
        std::make_shared<Config>(file2, start2, SZ_DATA, SZ_BATCH, mode2, rr_4, func2, func2_kbpf_id, func2_dbpf_id, 1),
    };

    auto nr_threads = thread_configs.size();

    std::unique_ptr<Test> tests[nr_threads];
    std::thread threads[nr_threads];

    printf("=== Configurations ===\n");
    printf("test file: " INPUT_FILE "\n");
    printf("SZ_DATA: " STRINGIFY(SZ_DATA) "\n");
    printf("SZ_BATCH: " STRINGIFY(SZ_BATCH) "\n\n");

    for (int i = 0; i < nr_threads; i++) {
        tests[i] = std::make_unique<Test>(i);
    }

    uint64_t ts = wall_time_ns();
    for (int i = 0; i < nr_threads; i++) {
        threads[i] = std::thread(&Test::run_by_config, tests[i].get(), thread_configs[i]);
    }

    for (int i = 0; i < nr_threads; i++) {
        threads[i].join();
    }

    Test::output_result(SZ_DATA >> 20, std::string("func1: ") + kLmdFuncName[func1], &tests[0], &tests[4]);
    Test::output_result(SZ_DATA >> 20, std::string("func2: ") + kLmdFuncName[func2], &tests[4], &tests[8]);

    return 0;
}
