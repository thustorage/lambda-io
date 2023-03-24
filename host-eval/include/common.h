#pragma once
#define deref_check(deref_type, base_ptr, boundary, offset) \
    *(deref_type*)((char *)(base_ptr) + (offset))

#define ibuf_deref_check(deref_type, offset) deref_check(deref_type, buf_i, size_i, offset)
#define obuf_deref_check(deref_type, offset) deref_check(deref_type, buf_o, size_i, offset)
#define deref_copy(d, s, type) (obuf_deref_check(type, d) = ibuf_deref_check(type, s))
#define deref_copy_2(d, s) deref_copy(d, s, uint16_t)
#define deref_copy_4(d, s) deref_copy(d, s, uint32_t)
#define deref_copy_6(d, s) ({deref_copy(d, s, uint32_t); deref_copy(d + 4, s + 4, uint16_t); })
#define deref_copy_8(d, s) deref_copy(d, s, uint64_t)

#define for_check(init, boundary, iter) for(init; boundary; iter)
#define while_check(cond) while(cond)

struct context {
    void *buf_o;
    void *buf_i;
    size_t size_i;
};