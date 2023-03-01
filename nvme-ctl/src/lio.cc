/* glue code for lambda-io */

// init
#include <libbpf.h>
#include <util.h>
#include <cstring>
#include <mem_util.h>
#include <debug.h>
#include <string>
#include <map>
#define min(x, y) ((x) < (y) ? (x) : (y))
#define max(x, y) ((x) > (y) ? (x) : (y))


#define deref_check(deref_type, base_ptr, boundary, offset) \
    *(deref_type*)((char *)base_ptr + (offset))

struct context {
    void *buf_o;
    void *buf_i;
    size_t size_i;
};

enum ProgramKern {
    EBPF = 0,
    NATIVE_STATS64 = 10,
    NATIVE_STATS32 = 11,
//    NATIVE_KNN = 12,
};

int tpch_ids[] = {1, 3, 4, 6, 7, 10, 12, 14, 15, 19, 20};
std::map<int, int> tpch_debpf_to_progid;

static const char *kerns[] = {"stats64", "stats32", "knn", "grep", "bitmap"};
//
int lio_init()
{
    printf("loaded kerns: \n");
    for (auto & kern : kerns) {
        std::string func = std::string(kern);
        if (func.find("ebpf") != std::string::npos) {
            printf("disable unbouded loop!\n");
            uebpf_set_back_jump_check(0);
        }
        std::string kern_file = func + "-d.o";

        int ret = uebpf_load_file(kern_file.c_str());
        if (ret < 0) {
            fprintf(stderr, "failed to load %s\n", kern);
            exit(EXIT_FAILURE);
        }
        printf("[%d] %s\n", ret, kern);
    }

    for (auto u : tpch_ids) {
        std::string kern_file = std::string("tpch-") + std::to_string(u) + "-d.o";
        int ret = uebpf_load_file(kern_file.c_str());
        if (ret < 0) {
            fprintf(stderr, "failed to load tpch-%d\n", u);
            exit(EXIT_FAILURE);
        }

        tpch_debpf_to_progid[100 + u] = ret;
        printf("tpch-%d: [%d]->[%d]\n", u, 100 + u, ret);
    }

    return 0;
}

static int native_stats32(struct context *ctx)
{
    using int_t = int32_t;
    const int_t number_per_row = ctx->size_i / sizeof(int_t);

    int_t* buf_input = (int_t*) ctx->buf_i;
    int_t idx = 0;
    int_t* buffer_out = (int_t*) ctx->buf_o;

    int_t v_max = INT32_MIN, v_min = INT32_MAX;
    int_t v_sum = 0;
    for (int64_t j = 0; j < number_per_row; j++)
    {
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

static int native_stats64(struct context *ctx)
{
    using int_t = int64_t;
    const int_t number_per_row = ctx->size_i / sizeof(int_t);

    int_t* buf_input = (int_t*) ctx->buf_i;
    int_t idx = 0;
    int_t* buffer_out = (int_t*) ctx->buf_o;

    int_t v_max = INT64_MIN, v_min = INT64_MAX;
    int_t v_sum = 0;
    for (int_t j = 0; j < number_per_row; j++)
    {
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

#if 0
static int native_knn(struct context *ctx)
{
    char *buf_i = (char *)ctx->buf_i;
    char *buf_o = (char *)ctx->buf_o;
    int64_t size_i = ctx->size_i;
    int64_t size_o = 0;
    const int64_t ROW_LENGTH = 2048;
    const int64_t NR_FEATURES = ROW_LENGTH / sizeof(int64_t) - 1;

    for (int64_t row_p = 0; row_p < size_i; row_p += ROW_LENGTH) {
        int64_t dist = 0;
        *(int64_t *)(buf_o + size_o) = *(int64_t *)(buf_i + row_p);
        int64_t off = row_p;
        for (int64_t j = 0; j < NR_FEATURES - 1; j++) {
            off += sizeof(int64_t);
            int64_t v = *(int64_t *)(buf_i + off);
            int64_t d = j - v;
            dist += (d < 0 ? -d : d);
        }
        *(int64_t *)(buf_o + size_o + sizeof(int64_t)) = dist;

        size_o += 2 * sizeof(int64_t);
    }

    return size_o;
}
#endif

int lio_call(int kern_id, void *buf_o, void *buf_i, size_t size_i)
{
    struct context ctx = {
            .buf_o = buf_o,
            .buf_i = buf_i,
            .size_i = size_i
    };

#ifdef ENABLE_EVAL
    int64_t ts = wall_time_ns();
#endif
    int size_o;
    switch (kern_id) {
        case NATIVE_STATS64:
            size_o = native_stats64(&ctx);
            break;
        case NATIVE_STATS32:
            size_o = native_stats32(&ctx);
            break;
//        case NATIVE_KNN:
//            size_o = native_knn(&ctx);
//            break;
        default:
            if (kern_id > 100) {
                kern_id = tpch_debpf_to_progid[kern_id];
            }
            size_o = uebpf_run(kern_id, &ctx);
    }

    pr_eval("kern_run time=%luns", wall_time_ns() - ts);
    return size_o;
}
