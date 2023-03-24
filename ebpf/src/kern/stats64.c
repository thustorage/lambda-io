#include "bpf_helpers.h"
#include <stdint.h>
#include "common.h"

typedef int64_t int_t;
#define INT_MIN INT64_MIN
#define INT_MAX INT64_MAX

int LIO_PROG(bpf_prog)(struct context *ctx)
{
    const size_t number_per_row = ctx->size_i / sizeof(int_t);
    int64_t back_cnt = 0;
    int_t* buf_input = (int_t*) ctx->buf_i;
    int_t* buffer_out = (int_t*) ctx->buf_o;
    int_t v_max = INT_MIN, v_min = INT_MAX;
    int_t v_sum = 0;

    for_check(int_t j = 0, j < number_per_row, j++)
    {
        int_t cur = deref_check(int_t, buf_input, ctx->size_i, j * sizeof(int_t));
        v_max = max(v_max, cur);
        v_min = min(v_min, cur);
        v_sum += cur;
    }

    deref_check(int_t, buffer_out, ctx->size_i, 0) = v_max;
    deref_check(int_t, buffer_out, ctx->size_i, sizeof(int_t)) = v_min;
    deref_check(int_t, buffer_out, ctx->size_i, 2 * sizeof(int_t)) = v_sum;
    return sizeof(int_t) * 3;
}
