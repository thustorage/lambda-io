#include <stdint.h>
#include "common.h"

int LIO_PROG(grep)(struct context *ctx)
{
#define COLUMN_SIZE (4l << 10)
#define PARAM_STR_LEN (2)
    const char param_str[] = "DA";
    int64_t nr_rows = ctx->size_i / COLUMN_SIZE;
    int64_t back_cnt = 0;
    void *buf_o = ctx->buf_o;
    void *buf_i = ctx->buf_i;
    size_t size_i = ctx->size_i;
    int64_t size_o = 0;

    for_check(int64_t row_p = 0, row_p < size_i, row_p += COLUMN_SIZE) {
        int64_t result = -1;
        for (int64_t j = 0; j < COLUMN_SIZE; j++) {
            if (j + PARAM_STR_LEN <= COLUMN_SIZE) {
                int64_t matched = 1;
                for (int64_t k = 0; k < PARAM_STR_LEN; k++) {
                    matched &= (param_str[k] == ibuf_deref_check(char, j + k + row_p));
                }
                if (matched) {
                    result = j;
                    break;
                }
            }
        }
        obuf_deref_check(int64_t, size_o) = result;
        size_o += sizeof(int64_t);
    }

    return size_o;
}
