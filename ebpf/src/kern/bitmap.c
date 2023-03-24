#include "common.h"
#include <stdint.h>

int LIO_PROG(bpf_prog)(struct context *ctx)
{
    char *buf_i = ctx->buf_i;
    char *buf_o = ctx->buf_o;
    int64_t size_o = 0;
    int64_t back_cnt = 0;

    for_check(int64_t i = 0, i < ctx->size_i, i += 2) {
        uint64_t n = deref_check(uint8_t, ctx->buf_i, ctx->size_i, i);
        if (!n) break;
        char c = deref_check(char, ctx->buf_i, ctx->size_i, i + 1);
        memset(buf_o + size_o, c, n);
        size_o += n;
    }
    return size_o;
}
