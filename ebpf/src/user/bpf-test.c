#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include "libbpf.h"
#include <stdint.h>

typedef int64_t s64;
struct context {
    void *buf_o;
    void *buf_i;
    size_t size_i;
};

#define MEM_CHECK 0
#if MEM_CHECK
#define deref_check(deref_type, base_ptr, boundary, offset) \
*(deref_type*)((char *)base_ptr + (offset) % boundary)
//    *(deref_type*)((char *)base_ptr + ((offset) < boundary ? (offset) : 0))

#else
#define deref_check(deref_type, base_ptr, boundary, offset) \
    *(deref_type*)((char *)base_ptr + (offset))
#endif

#define BACK_CHECK 0
#if BACK_CHECK
#define for_check(init, boundary, iter) \
    for (init; (boundary) && (back_cnt >> 24) == 0; back_cnt++, iter)
#define while_check(cond) \
    for (; cond && (back_cnt >> 24) == 0; back_cnt++)
#else
#define for_check(init, boundary, iter) for(init; boundary; iter)
#define while_check(cond) while(cond)
#endif

char *src_str;
char *dst_str;
const char exp_str[] = "az";
const char src_pattern[] = "aa  ab  ac  ad  ae  af  ag  ah  ai  aj  ak  al  am  an  ao  ap  ";
const int src_size = 64;
typedef int64_t int_t;

#define min(x, y) ((x) < (y) ? (x) : (y))
#define max(x, y) ((x) > (y) ? (x) : (y))

#define INT_MAX INT64_MAX
#define INT_MIN INT64_MIN

enum {
    EMPTY,
    MATCHING,
    COPY,
    MATCHED,
    MISMATCH,
};

static inline double wall_time_ns(void)
{
    struct timespec ts;
    clock_gettime(CLOCK_REALTIME, &ts);
    return ts.tv_nsec + ts.tv_sec * 1.e9;
}

int run_cpu(struct context *ctx)
{
    const size_t number_per_row = ctx->size_i / sizeof(int_t);
    int back_cnt = 0;
    int_t* buf_input = (int_t*) ctx->buf_i;
    size_t idx = 0;
    int_t* buffer_out = (int_t*) ctx->buf_o;

    int_t v_max = INT_MIN, v_min = INT_MAX;
    int_t v_sum = 0;
    for_check(int_t j = 0, j < number_per_row, j++)
    {
// unsigned int cur = (*input_buf)[i][j];
        int_t cur = deref_check(int_t, buf_input, ctx->size_i, j * sizeof(int_t));
        v_max = max(v_max, cur);
        v_min = min(v_min, cur);
        v_sum += cur;
    }
// printf("v_max = %d, v_min = %d, v_avg = %lld\n", v_max, v_min, v_sum / (COL_NUM / sizeof(unsigned int)));
    deref_check(int_t, buffer_out, ctx->size_i, 0) = v_max;
    deref_check(int_t, buffer_out, ctx->size_i, sizeof(int_t)) = v_min;
    deref_check(int_t, buffer_out, ctx->size_i, 2 * sizeof(int_t)) = v_sum / number_per_row;
    return sizeof(int_t) * 3;
}


static int call_filter(void)
{
    int i, ret;
    double timestamp;
    struct context ctx;

    src_str = malloc(src_size);
    if (!src_str) {
        return 1;
    }

    dst_str = malloc(src_size);
    if (!src_str) {
        free(src_str);
        return 1;
    }

    for (i = 0; i < src_size; i += strlen(src_pattern)) {
        memcpy(src_str + i, src_pattern, strlen(src_pattern));
    }

    printf("===== IO =====\n");
    timestamp = wall_time_ns();
    for (int i = 0; i < src_size; i += strlen(src_pattern)) {
        memcpy(src_str + i, src_pattern, strlen(src_pattern));
    }

    ctx.buf_i = src_str;
    ctx.size_i = src_size;
    ctx.buf_o = dst_str;

    printf("* IO/xfer: ret=%d, time=%.2lfns\n", ret, wall_time_ns() - timestamp);
    double ts = wall_time_ns();
    int_t dst_size = run_cpu(&ctx);
    printf("buf_o[0]=%ld\n", *(int_t*)ctx.buf_o);
    printf("* IO/calc: time=%.2lfns\n", wall_time_ns() - ts);
    printf("^ IO/totl: dst_size=%ld, total time=%.2lfns\n", dst_size, wall_time_ns() - timestamp);

    printf("===== UEBPF =====\n");
    timestamp = wall_time_ns();

    ret = uebpf_run(0, &ctx);
    printf("buf_o[0]=%ld\n", *(int_t*)ctx.buf_o);
    printf("* bpf read() ret=%d\n", ret);
    printf("^ BPF/totl: dst_size=%d, total time=%.2lfns\n", ret, wall_time_ns() - timestamp);

    free(src_str);
    free(dst_str);
    return 0;
}

int kebpf_run(void)
{
    int fd = open("/proc/bpf-helper", O_RDWR);
    int ret;
    if (fd < 0) {
        perror("open bpf-helper");
        exit(EXIT_FAILURE);
    }
    ret = pread(fd, NULL, src_size, 0);
    printf("bpf-helper ret=%d\n", ret);
    close(fd);
}


int main(int argc, char **argv)
{
    int uebpf_ret = uebpf_load_file("stats.o");
    printf("ret=%d\n", uebpf_ret);
    if (uebpf_ret) return uebpf_ret;

    call_filter();

    return 0;
}
