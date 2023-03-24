#pragma once
// c++
#include <iostream>
#include <cstring>
#include <map>
#include <memory>
#include <thread>
#include <functional>
#include <utility>
#include <vector>
#include <array>
#include <cassert>

// linux
#include <sys/mman.h>

// mine
#include "fmap.h"
#include <libnvme.h>
#include <util.h>
#include <libbpf.h>
#include "common.h"
#include <util.hh>
#include "config.hh"

#define handle_if_nvme_error(err) \
    do { if (err) printf("%d - %s\n", err, nvme_get_error_message(err)); } while(0)
#define SZ_1M (1l << 20)
#define SZ_2M (2l << 20)
#define SZ_4M (4l << 20)
#define SZ_8M (8l << 20)
#define SZ_16M (16l << 20)
#define SZ_64M (64l << 20)
#define SZ_256M (256l << 20)
#define SZ_8K (8l << 10)
#define SZ_4K (4l << 10)
#define SZ_256K (256l << 10)
#define SZ_1G (1l << 30)
#define SZ_2G (2l << 30)
#define SZ_4G (4l << 30)
#define SZ_8G (8l << 30)
#define SZ_16G (16l << 30)
#define SZ_32G (32l << 30)
#define STRINGIFY_1(x...)	#x
#define STRINGIFY(x...)	STRINGIFY_1(x)

using u64 = uint64_t;
using s64 = int64_t;
using partition_t = std::function<bool(int, s64)>;

#define min(x, y) ((x) < (y) ? (x) : (y))
#define max(x, y) ((x) > (y) ? (x) : (y))

union prof_args {
    struct {
        uint8_t sid;
        uint16_t prof_intv;
        uint16_t prof_num;
    } __attribute__((packed));
    unsigned long uvalue;
};
struct RunningStats {
    uint64_t time_calc_ns;
    uint64_t time_io_ns;
    uint32_t nr_kern_reqs;
    uint32_t nr_dev_reqs;
    uint32_t nr_profiling_reqs;
    uint64_t time_profiling_ns;

    RunningStats& operator+=(const RunningStats &rhs)
    {
        time_calc_ns += rhs.time_calc_ns;
        time_io_ns += rhs.time_io_ns;
        nr_kern_reqs += rhs.nr_kern_reqs;
        nr_dev_reqs += rhs.nr_dev_reqs;
        nr_profiling_reqs += rhs.nr_profiling_reqs;
        time_profiling_ns += rhs.time_profiling_ns;
        return *this;
    }

    void div_to_avg(int n)
    {
        time_calc_ns /= n;
        time_io_ns /= n;
        time_profiling_ns /= n;
    }
};
#define LIOH_IOCTL_SET_KBPF _IO('L', 0x30)
#define LIOH_IOCTL_SET_SCHED _IO('L', 0x31)
#define LIOH_IOCTL_SET_DBPF _IO('L', 0x32)
#define LIOH_IOCTL_SET_PROF   _IO('L', 0x33)
#define MAX_EXTENT_NUM 32
struct lioh_set_back_file {
    uint32_t ufd;
    uint32_t nr_extents;
    struct extent extents[MAX_EXTENT_NUM];
};
#define LIOH_IOCTL_SET_BACK_FILE  _IOW('L', 0x34, struct lioh_set_back_file)
#define LIOH_IOCTL_GET_STATS _IOR('L', 0x35, RunningStats)
#define LIOH_IOCTL_CLEAR_STATS _IO('L', 0x36)

enum LmdFuncId {
    STATS64 = 0,
    STATS32,
    KNN,
    GREP,
    BITMAP,
    NR_LMDFUNCS
};

class EnumValue {
public:
    using value_t = uint8_t;
    using name_t = std::string;
private:
    value_t value_;
    name_t name_;
public:
    EnumValue(value_t value, name_t name) : value_(value), name_(std::move(name)) {}
    explicit operator value_t() const { return value_; }
    explicit operator name_t() const { return name_; }
};

static const char* kLmdFuncName[] = {
"stats64", "stats32", "knn", "grep", "bitmap"
};

static bool lmd_is_write(enum LmdFuncId id)
{
    return id == BITMAP;
}

enum DispatchMode {
    UB = 0,
    UD,
    UM,
    K,
    D,
    A,
};

static const char *kDispatchModeName[] = {
        "UB", "UD", "UM", "K", "D", "A"
};

struct nvme_meta {
    int64_t size_o;
    uint64_t calc_ns;
    uint64_t pre_ns;
    char buf_o[0];
};

// return !0 if error.
static int set_back_file(int lioh_fd, const char *back_filename)
{
    int fd = open(back_filename, O_RDWR | O_SYNC);
    if (fd < 0) {
        perror(back_filename);
        return -1;
    }

    struct lioh_set_back_file bf{};
    bf.nr_extents = get_file_extents(back_filename, bf.extents);
    if (bf.nr_extents == 0) {
        std::cerr << "nr_extents=0" << std::endl;
        return -1;
    }
    bf.ufd = fd;

    return ioctl(lioh_fd, LIOH_IOCTL_SET_BACK_FILE, &bf);
}

class Config {
public:
    std::string file_;
    int64_t start_;
    int64_t length_;
    int64_t batch_;
    DispatchMode dispatch_mode_;
    partition_t partition_fn_;
    LmdFuncId lmd_func_;
    int kbpf_id_;
    int dbpf_id_;
    int stream_id_;
    int lioh_fd_ = -1;

    Config(const std::string& file, int64_t start, int64_t length, int64_t batch,
           DispatchMode dispatch_mode, partition_t partition_fn,
           LmdFuncId lmd_func, int kbpf_id, int dbpf_id, int stream_id)
            : file_(file), start_(start), length_(length), batch_(batch), dispatch_mode_(dispatch_mode),
             partition_fn_(std::move(partition_fn)), lmd_func_(lmd_func),
             kbpf_id_(kbpf_id), dbpf_id_(dbpf_id),
             stream_id_(stream_id)
    {
        static bool inited = false;
        lioh_fd_ = open(LIOH_FILE, O_RDWR);
        if (lioh_fd_ < 0) {
            perror("open " LIOH_FILE);
            exit(EXIT_FAILURE);
        }
        assert(ioctl(lioh_fd_, LIOH_IOCTL_SET_SCHED, dispatch_mode) >= 0);
        assert(ioctl(lioh_fd_, LIOH_IOCTL_SET_KBPF, kbpf_id) >= 0);
        assert(ioctl(lioh_fd_, LIOH_IOCTL_SET_DBPF, dbpf_id) >= 0);

        union prof_args prof_args{};
        prof_args.sid = stream_id_;
        prof_args.prof_intv = util::getenv_int_or("LIO_PROF_INTV", DEFAULT_PROF_INTV);
        prof_args.prof_num = util::getenv_int_or("LIO_PROF_NUM", DEFAULT_PROF_NUM);
        assert(ioctl(lioh_fd_, LIOH_IOCTL_SET_PROF, prof_args.uvalue) >= 0);
        assert(set_back_file(lioh_fd_, file.c_str()) >= 0);
        if (!inited) {
            printf("prof_intv=%d, prof_num=%d\n", prof_args.prof_intv, prof_args.prof_num);
            inited = true;
        }
    }

    Config(Config &) = delete;

    ~Config()
    {
        if (lioh_fd_ >= 0) {
            close(lioh_fd_);
        }
    }
};

class Workloads {
private:
    static ssize_t grep(void *buf_o, void *buf_i, size_t size_i) {
        using int_t = int64_t;
#define COLUMN_SIZE (4l << 10)
#define PARAM_STR_LEN (2)
        const char param_str[] = "DA";
        auto *result = (int_t *) buf_o;
        int_t nr_rows = size_i / COLUMN_SIZE;
        char *buf = (char *) buf_i;

        for (int_t i = 0; i < nr_rows; i++) {
            result[i] = -1;
            for (int j = 0; j < COLUMN_SIZE; j++) {
                if (j + PARAM_STR_LEN <= COLUMN_SIZE) {
                    int matched = 1;
                    for (int k = 0; k < PARAM_STR_LEN; k++) {
                        matched &= (param_str[k] == buf[j + k + i * COLUMN_SIZE]);
                    }
                    if (matched) {
                        result[i] = j;
                        break;
                    }
                }
            }
        }

        return sizeof(int_t) * nr_rows;
    }

    static ssize_t stats64(void *buf_o, void *buf_i, size_t size_i) {
        using int_t = int64_t;
        const size_t number_per_row = size_i / sizeof(int_t);
        int_t *buf_input = (int_t *) buf_i;
        size_t idx = 0;
        int_t *buffer_out = (int_t *) buf_o;

        int_t v_max = INT64_MIN, v_min = INT64_MAX;
        int_t v_sum = 0;
        for (int_t j = 0; j < number_per_row; j++) {
            // unsigned int cur = (*input_buf)[i][j];
            int_t cur = buf_input[j];
            v_max = max(v_max, cur);
            v_min = min(v_min, cur);
            v_sum += cur;
        }
        // printf("v_max = %d, v_min = %d, v_avg = %lld\n", v_max, v_min, v_sum / (COL_NUM / sizeof(unsigned int)));
        buffer_out[idx++] = v_max;
        buffer_out[idx++] = v_min;
        buffer_out[idx++] = v_sum;
        return sizeof(int_t) * 3;
    }

    static ssize_t stats32(void *buf_o, void *buf_i, size_t size_i) {
        using int_t = int32_t;
        const size_t number_per_row = size_i / sizeof(int_t);
        int_t *buf_input = (int_t *) buf_i;
        int_t idx = 0;
        int_t *buffer_out = (int_t *) buf_o;

        int_t v_max = INT32_MIN, v_min = INT32_MAX;
        int_t v_sum = 0;
        for (int_t j = 0; j < number_per_row; j++) {
            // unsigned int cur = (*input_buf)[i][j];
            int_t cur = buf_input[j];
            v_max = max(v_max, cur);
            v_min = min(v_min, cur);
            v_sum += cur;
        }
        // printf("v_max = %d, v_min = %d, v_avg = %lld\n", v_max, v_min, v_sum / (COL_NUM / sizeof(unsigned int)));
        buffer_out[idx++] = v_max;
        buffer_out[idx++] = v_min;
        buffer_out[idx++] = v_sum;
        return sizeof(int_t) * 3;
    }

    static ssize_t knn(void *buf_o, void *buf_i, size_t size_i) {
        using int_t = int64_t;
#define ROW_LENGTH 2048
#define NR_FEATURES ((ROW_LENGTH - sizeof(int_t))/sizeof(int_t))

        int_t size_o = 0;
        int_t nr_rows = size_i / ROW_LENGTH;

        for (int64_t row_p = 0; row_p < size_i; row_p += ROW_LENGTH) {
            int_t dist = 0;
            for (int_t j = 0; j < NR_FEATURES; j++) {
                int_t s = deref_check(int_t, buf_i, size_i, row_p + (j + 1) * sizeof(int_t));
                int_t f = s - j;
                dist += (f > 0 ? f : -f);
            }
            obuf_deref_check(int_t, size_o) = ibuf_deref_check(int_t, row_p);
            obuf_deref_check(int_t, size_o + sizeof(int_t)) = dist;
            size_o += sizeof(int_t) * 2;
        }

        return size_o;
    }

    static ssize_t bitmap(void *buf_o, void *buf_i, size_t size_i)
    {

        int64_t size_o = 0;
        int64_t back_cnt = 0;

        for_check(int64_t i = 0, i < size_i, i += 2) {
            uint8_t n = deref_check(uint8_t, buf_i, ctx->size_i, i);
            if (!n) break;
            char c = deref_check(char, buf_i, ctx->size_i, i + 1);
            memset((char *)buf_o + size_o, c, n);
            size_o += n;
        }
        return size_o;
    }
public:
    static std::pair<size_t, size_t> bitmap_set_buf_i(char *buf, size_t sz_batch)
    {
        uint8_t factor = 32;
        // before (2m): n, 'a', n, 'a', n, 'a'
        // after (mn): 'a', 'a', 'a', ...
        // factor: n / 2
        auto size_i = sz_batch / factor;
        for (int i = 0; i < size_i; i += 2) {
            ((uint8_t *)buf)[i] = factor * 2;
            buf[i + 1] = 'a';
        }

        auto size_o = size_i * factor;

        return {size_i, size_o};
    }

    static ssize_t call(LmdFuncId id, void *buf_o, void *buf_i, size_t size_i)
    {
        switch (id) {
            case STATS64:
                return stats64(buf_o, buf_i, size_i);
            case GREP:
                return grep(buf_o, buf_i, size_i);
            case KNN:
                return knn(buf_o, buf_i, size_i);
            case STATS32:
                return stats32(buf_o, buf_i, size_i);
            case BITMAP:
                return bitmap(buf_o, buf_i, size_i);
            default:
                printf("unknown calculation core: %d\n", id);
                return -1;
        }
    }
};


class Test {
private:
    int tid_;
    u64 calc_ns_ = 0;
    u64 io_ns_ = 0;
    double time_io_s_ = 0.0; // IO time in seconds
    double time_calc_s_ = 0.0; // Computation time in seconds
    double time_total_s_ = 0.0; // Total time in seconds
    RunningStats running_stats_{};

public:
    explicit Test(int tid) : tid_(tid) {}
    [[nodiscard]] auto calc_ns() const { return calc_ns_; }
    [[nodiscard]] auto io_ns() const { return io_ns_; }
    auto time_io_s() const { return time_io_s_; }
    auto time_calc_s() const { return time_calc_s_; }
    auto time_total_s() const { return time_total_s_; }
    auto time_other_s() const { return time_total_s_ - time_calc_s_ - time_io_s_; }
    auto running_stats() const { return running_stats_; }

    template<typename Iter>
    static void output_result(uint32_t sz_mb, const std::string &title, Iter begin, Iter end)
    {
        double time_io = 0.0;
        double time_calc = 0.0;
        double time_other = 0.0;
        double time_total = 0.0;
        int cnt = 0;
        RunningStats total_running_stats{};

        for (Iter iter = begin; iter < end; iter++) {
            time_io += (*iter)->time_io_s();
            time_calc += (*iter)->time_calc_s();
            time_other += (*iter)->time_other_s();
            time_total += (*iter)->time_total_s();
            total_running_stats += (*iter)->running_stats();
            cnt++;
        }

        time_io /= cnt;
        time_calc /= cnt;
        time_other /= cnt;
        time_total /= cnt;
        total_running_stats.div_to_avg(cnt);

        double bandwidth = (double)(sz_mb) / time_total;
        printf("bandwidth= %.4lf MB/s, time_io= %.4lf s, time_calc = %.4lf s, time_other = %.4lf s, time_total = %.4lf s\n",
               bandwidth, time_io, time_calc, time_other, time_total);
        printf("nr_kern_reqs= %u , nr_dev_reqs= %u , nr_profiling_reqs= %u , time_profiling_s= %.4lf s\n",
               total_running_stats.nr_kern_reqs, total_running_stats.nr_dev_reqs, total_running_stats.nr_profiling_reqs,
               (double)total_running_stats.time_profiling_ns / 1.e9);
        printf("eval %s result: %.4lf %.4lf %.4lf %.4lf\n", title.c_str(), time_io, time_calc, time_other, time_total);
    }

    void run_user_read(const std::shared_ptr<Config>& config, bool direct)
    {
        char *buf = (char *)aligned_alloc(SZ_4K, SZ_4K + config->batch_);
        u64 ts, calc_time = 0, io_time = 0;
        ssize_t ret;
        int64_t sum = 0;
        void *result = malloc(SZ_2M);
        assert(result);
        if (direct) {
            printf("--- UD ---\n");
        } else {
            printf("--- UB ---\n");
        }
        int file_fd = open(INPUT_FILE, O_RDWR | (direct ? __O_DIRECT : 0));
        ts = wall_time_ns();
        for (int64_t i = 0; i < config->length_; i += config->batch_) {
            if (config->partition_fn_(tid_, i / config->batch_)) {
                u64 ts_io = wall_time_ns();
                ret = pread(file_fd, buf, config->batch_, i + config->start_);
                io_time += wall_time_ns() - ts_io;
                if (ret != config->batch_) {
                    printf("ret=%zd\n", ret);
                }

                assert(ret == config->batch_);
                u64 ts_calc = wall_time_ns();
                ret = Workloads::call(config->lmd_func_, result, buf, config->batch_);
                calc_time += wall_time_ns() - ts_calc;
                sum += *(int64_t *)result;
            }
        }

        calc_ns_ = calc_time;
        io_ns_ = io_time;

        time_io_s_ = (double)io_time / 1.e9;
        time_calc_s_ = (double)calc_time / 1.e9;
        time_total_s_ = (double)(wall_time_ns() - ts) / 1.e9;
        printf("run_user%s[%d]: result=%ld, time_io= %.4lf s, time_calc= %.4lf s, time_total= %.4lf s\n",
               direct ? "_direct" : "", tid_, sum, time_io_s_, time_calc_s_, time_total_s_);
        free(result);
        free(buf);
    }

    void run_user_write(const std::shared_ptr<Config>& config, bool direct)
    {
        char *buf_i = (char *)aligned_alloc(SZ_4K, SZ_4K + config->batch_);
        assert(buf_i);
        char *buf_o = (char *)aligned_alloc(SZ_4K, SZ_4K + config->batch_);
        assert(buf_o);

        u64 ts, calc_time = 0, io_time = 0;
        ssize_t ret;
        int64_t sum = 0;
        if (direct) {
            printf("--- UD ---\n");
        } else {
            printf("--- UB ---\n");
        }
        int file_fd = open(OUTPUT_FILE, O_RDWR | (direct ? __O_DIRECT : 0) | O_SYNC);

        auto [size_i, expected_size_o] = Workloads::bitmap_set_buf_i(buf_i, config->batch_);
        ts = wall_time_ns();
        for (int64_t i = 0; i < config->length_; i += config->batch_) {
            if (config->partition_fn_(tid_, i / config->batch_)) {
                u64 ts_calc = wall_time_ns();
                ssize_t size_o = Workloads::call(config->lmd_func_, buf_o, buf_i, size_i);
                calc_time += wall_time_ns() - ts_calc;
                sum += size_o;
                assert(size_o == expected_size_o);

                u64 ts_io = wall_time_ns();
                ssize_t ret_write = pwrite(file_fd, buf_o, size_o, i + config->start_);
                io_time += wall_time_ns() - ts_io;
                assert(ret_write == size_o);
            }
        }

        calc_ns_ = calc_time;
        io_ns_ = io_time;
        time_io_s_ = (double)io_time / 1.e9;
        time_calc_s_ = (double)calc_time / 1.e9;
        time_total_s_ = (double)(wall_time_ns() - ts) / 1.e9;
        printf("run_user%s[%d]: result=%ld, time_io= %.4lf s, time_calc= %.4lf s, time_total= %.4lf s\n",
               direct ? "_direct" : "", tid_, sum, time_io_s_, time_calc_s_, time_total_s_);
        free(buf_i);
        free(buf_o);
    }

    void run_user(const std::shared_ptr<Config>& config, bool direct)
    {
        return lmd_is_write(config->lmd_func_) ?
            run_user_write(config, direct) : run_user_read(config, direct);
    }

    void run_mmap_read(const std::shared_ptr<Config>& config)
    {
        u64 ts, calc_time = 0;
        int ret;
        int64_t sum = 0;
        void *result = malloc(SZ_2M);
        assert(result);

        printf("--- UM ---\n");

        int file_fd = open(INPUT_FILE, O_RDWR);
        char *file_buf = (char *)mmap(nullptr, config->length_, PROT_READ | PROT_WRITE, MAP_SHARED, file_fd, config->start_);
        if (file_buf == MAP_FAILED) {
            perror("mmap");
            exit(EXIT_FAILURE);
        }
        ts = wall_time_ns();
        for (int64_t i = 0; i < config->length_; i += config->batch_) {
            if (config->partition_fn_(tid_, i / config->batch_)) {
                uint64_t ts_calc = wall_time_ns();
                Workloads::call(config->lmd_func_, result, file_buf + i, config->batch_);
                calc_time += wall_time_ns() - ts_calc;
                sum += *(int64_t *)result;
            }
        }
        calc_ns_ = calc_time;
        io_ns_ = 0;

        free(result);
        close(file_fd);
        munmap(file_buf, config->length_);

        time_io_s_ = (double)0 / 1.e9;
        time_calc_s_ = (double)calc_time / 1.e9;
        time_total_s_ = (double)(wall_time_ns() - ts) / 1.e9;
        printf("run_mmap[%d]: result=%ld, time_io= %.4lf s, time_calc= %.4lf s, time_total= %.4lf s\n",
               tid_, sum, time_io_s_, time_calc_s_, time_total_s_);
    }

    void run_mmap_write(const std::shared_ptr<Config>& config)
    {
        u64 ts, calc_time = 0, io_time = 0;
        int ret;
        int64_t sum = 0;

        void *buf_i = aligned_alloc(SZ_4K, config->batch_ + SZ_4K);
        assert(buf_i);

        printf("--- UM ---\n");

        int file_fd = open(OUTPUT_FILE, O_RDWR);
        char *file_buf = (char *)mmap(nullptr, config->length_, PROT_READ | PROT_WRITE, MAP_SHARED, file_fd, config->start_);
        if (file_buf == MAP_FAILED) {
            perror("mmap");
            exit(EXIT_FAILURE);
        }

        auto [size_i, expected_size_o] = Workloads::bitmap_set_buf_i((char *)buf_i, config->batch_);

        ts = wall_time_ns();
        for (int64_t i = 0; i < config->length_; i += config->batch_) {
            if (config->partition_fn_(tid_, i / config->batch_)) {
                uint64_t ts_calc = wall_time_ns();
                auto size_o = Workloads::call(config->lmd_func_, file_buf + i, buf_i, size_i);
                calc_time += wall_time_ns() - ts_calc;
                assert(size_o == expected_size_o);

                u64 ts_io = wall_time_ns();
                assert(msync(file_buf + i, size_o, MS_SYNC) == 0);
                io_time += wall_time_ns() - ts_io;
                sum += size_o;
            }
        }
        free(buf_i);

        calc_ns_ = calc_time;
        io_ns_ = io_time;

        close(file_fd);
        munmap(file_buf, config->length_);
        time_io_s_ = (double)io_time / 1.e9;
        time_calc_s_ = (double)calc_time / 1.e9;
        time_total_s_ = (double)(wall_time_ns() - ts) / 1.e9;
        printf("run_mmap[%d]: result=%ld, time_io= %.4lf s, time_calc= %.4lf s, time_total= %.4lf s\n",
               tid_, sum, time_io_s_, time_calc_s_, time_total_s_);
    }

    void run_mmap(const std::shared_ptr<Config>& config)
    {
        return lmd_is_write(config->lmd_func_) ?
            run_mmap_write(config) : run_mmap_read(config);
    }

    void run_kda_read(const std::shared_ptr<Config>& config)
    {
        printf("--- %s ---\n", kDispatchModeName[config->dispatch_mode_]);
        u64 ts, calc_time = 0, io_time = 0;
        int64_t sum = 0;
        int lioh_fd = config->lioh_fd_;
        void *buf_o = aligned_alloc(SZ_4K, SZ_4K + config->batch_);
        assert(buf_o);
        ssize_t size_o;

        ts = wall_time_ns();
        for (int64_t i = 0; i < config->length_; i += config->batch_) {
            if (config->partition_fn_(tid_, i / config->batch_)) {
                size_o = pread(lioh_fd, buf_o, config->batch_, i + config->start_);
                if (size_o < 0) {
                    printf("tid=%d, off=0x%lx, size_o=%zd\n", tid_, i + config->start_, size_o);
                    assert(0);
                }
                auto meta = (nvme_meta *)buf_o;
                calc_time += meta->calc_ns;
                io_time += meta->pre_ns;
                sum += *(int64_t *)meta->buf_o;
            }
        }
        calc_ns_ = calc_time;
        io_ns_ = io_time;
        time_io_s_ = (double)io_time / 1.e9;
        time_calc_s_ = (double)calc_time / 1.e9;
        time_total_s_ = (double)(wall_time_ns() - ts) / 1.e9;


        RunningStats running_stats{};
        int ret = ioctl(lioh_fd, LIOH_IOCTL_GET_STATS, &running_stats);
        if (ret < 0) {
            fprintf(stderr, "LIOH_IOCTL_GET_STATS err=%s\n", strerror(errno));
            assert(0);
        }
        running_stats_.nr_kern_reqs = running_stats.nr_kern_reqs;
        running_stats_.nr_dev_reqs = running_stats.nr_dev_reqs;
        running_stats_.nr_profiling_reqs = running_stats.nr_profiling_reqs;
        running_stats_.time_profiling_ns = running_stats.time_profiling_ns;

        printf("run_kda[%d]: result=%ld, time_io= %.4lf s, time_calc= %.4lf s, time_total= %.4lf s, nr_kern_reqs= %u , nr_dev_reqs= %u, nr_profiling_reqs= %u\n",
               tid_, sum, time_io_s_, time_calc_s_, time_total_s_, running_stats.nr_kern_reqs, running_stats.nr_dev_reqs, running_stats.nr_profiling_reqs);
        close(lioh_fd);
        free(buf_o);
    }

    void run_kda_write(const std::shared_ptr<Config>& config)
    {
        printf("--- %s ---\n", kDispatchModeName[config->dispatch_mode_]);
        u64 ts;
        ssize_t size_o;
        int64_t sum = 0;
        int lioh_fd = config->lioh_fd_;
        char *buf_i = (char *)aligned_alloc(SZ_4K, SZ_4K + config->batch_);
        assert(buf_i);

        auto [size_i, expected_size_o] = Workloads::bitmap_set_buf_i(buf_i, config->batch_);
        assert(size_i <= SZ_2M);
        ts = wall_time_ns();
        for (int64_t i = 0; i < config->length_; i += config->batch_) {
            if (config->partition_fn_(tid_, i / config->batch_)) {
                size_o = pwrite(lioh_fd, buf_i, size_i, i + config->start_);
                assert(size_o == expected_size_o);
                sum += size_o;
            }
        }

        RunningStats running_stats{};
        int ret = ioctl(lioh_fd, LIOH_IOCTL_GET_STATS, &running_stats);
        if (ret < 0) {
            fprintf(stderr, "LIOH_IOCTL_GET_STATS err=%s\n", strerror(errno));
            assert(0);
        }
        calc_ns_ = running_stats.time_calc_ns;
        io_ns_ = running_stats.time_io_ns;
        running_stats_.nr_kern_reqs = running_stats.nr_kern_reqs;
        running_stats_.nr_dev_reqs = running_stats.nr_dev_reqs;
        running_stats_.nr_profiling_reqs = running_stats.nr_profiling_reqs;
        running_stats_.time_profiling_ns = running_stats.time_profiling_ns;

        time_io_s_ = (double)io_ns_ / 1.e9;
        time_calc_s_ = (double)calc_ns_ / 1.e9;
        time_total_s_ = (double)(wall_time_ns() - ts) / 1.e9;

        printf("run_kda[%d]: result=%ld, time_io= %.4lf s, time_calc= %.4lf s, time_total= %.4lf s\n",
               tid_, sum, time_io_s_, time_calc_s_, time_total_s_);
        close(lioh_fd);
        free(buf_i);
    }

    void run_kda(const std::shared_ptr<Config>& config)
    {
        return lmd_is_write(config->lmd_func_) ?
               run_kda_write(config) : run_kda_read(config);
    }

    void run_by_config(const std::shared_ptr<Config>& config) {
        switch (config->dispatch_mode_)
        {
            case UB:
                run_user(config, false);
                break;
            case UD:
                run_user(config, true);
                break;
            case UM:
                run_mmap(config);
                break;
            case K:
            case D:
            case A:
                run_kda(config);
                break;
            default:
                __builtin_unreachable();
        }
    }
};
