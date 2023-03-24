#include "common.h"
#include <stdint.h>

typedef int64_t int_t;
#define INT_MIN INT64_MIN
#define INT_MAX INT64_MAX

#define ROW_LENGTH (2048)
#define NR_FEATURES (ROW_LENGTH /sizeof(int_t))

int LIO_PROG(knn)(struct context *ctx)
{
    int64_t back_cnt = 0;
    char *buf_i = ctx->buf_i;
    char *buf_o = ctx->buf_o;
    int64_t size_i = ctx->size_i;
    int64_t size_o = 0;

    for_check(int64_t row_p = 0, row_p < size_i, row_p += ROW_LENGTH) {
        int_t dist = 0;
        obuf_deref_check(int_t, size_o) = ibuf_deref_check(int_t, row_p);
        for_check(int64_t j = 0, j < NR_FEATURES - 1, j++) {
            int_t v = ibuf_deref_check(int_t, row_p + (j + 1) * sizeof(int_t));
            int_t d = j - v;
            dist += (d > 0 ? d : -d);
        }
        obuf_deref_check(int_t, size_o + sizeof(int_t)) = dist;
        size_o += 2 * sizeof(int_t);
    }

    return size_o;
}
