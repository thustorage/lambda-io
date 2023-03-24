#include "bpf_helpers.h"
#include <stdint.h>
#include "common.h"

typedef int32_t int_t;
#define INT_MIN INT32_MIN
#define INT_MAX INT32_MAX

int LIO_PROG(bpf_prog)(struct context *ctx)
{
    // unsigned int (*input_buf) [ROW_NUM][NUMBER_PER_ROW] = (unsigned int * [ROW_NUM][NUMBER_PER_ROW])buf_i;
    const size_t number_per_row = ctx->size_i / sizeof(int_t);
    int64_t back_cnt = 0;
    int_t* buf_input = (int_t*) ctx->buf_i;
    int_t* buffer_out = (int_t*) ctx->buf_o;

    int_t v_max = INT_MIN, v_min = INT_MAX;
    int_t v_sum = 0;

//#pragma clang loop unroll_count(16)
    for_check(int64_t j = 0, j < number_per_row, j++)
        {
            // unsigned int cur = (*input_buf)[i][j];
            int_t cur = 0;
#if 0
            bpf_mem_read(&cur, buf_input, j * sizeof(int_t), sizeof(int_t), ctx->size_i);
#else
            cur = deref_check(int_t, buf_input, ctx->size_i, j * sizeof(int_t));
#endif
            v_max = max(v_max, cur);
            v_min = min(v_min, cur);
            v_sum += cur;
        }
//    deref_check(int_t, buffer_out, ctx->size_i, 0) = j;

#if 0
        bpf_mem_write(buffer_out, &v_max, 0, sizeof(int_t), ctx->size_i);
        bpf_mem_write(buffer_out, &v_min, sizeof(int_t), sizeof(int_t), ctx->size_i);
        bpf_mem_write(buffer_out, &v_sum, sizeof(int_t) * 2, sizeof(int_t), ctx->size_i);
#else
        deref_check(int_t, buffer_out, ctx->size_i, 0) = v_max;
        deref_check(int_t, buffer_out, ctx->size_i, sizeof(int_t)) = v_min;
        deref_check(int_t, buffer_out, ctx->size_i, 2 * sizeof(int_t)) = v_sum;
#endif
        return sizeof(int_t) * 3;
}