#include <bpf.h>
#include <string.h>
#include <lio.h>
#include <stdlib.h>
#include <types.h>

// bool enable_bpf_check = true;

extern const struct bpf_func_proto bpf_trace_printk_proto;

BPF_CALL_3(bpf_helper_memcpy, void *, dst, void *, src, size_t, len)
{
	// pr_info("[%s] called\n", __func__);
	memcpy(dst, src, len);
	return 0;
}

BPF_CALL_1(bpf_malloc, size_t, size)
{
    return (uint64_t)malloc(size);
}

BPF_CALL_1(bpf_free, void *, pt)
{
    free(pt);
    return 0;
}

BPF_CALL_5(bpf_mem_read, void *, dst, void *, src, off_t, offset, size_t, size,
           size_t, boundary)
{
    if (offset > boundary - size) {
        offset = boundary - size;
    }

    memcpy(dst, src + offset, size);
    return size;
}

BPF_CALL_5(bpf_mem_write, void *, dst, void *, src, off_t, offset, size_t, size,
           size_t, boundary)
{
    if (offset > boundary - size) {
        offset = boundary - size;
    }
    memcpy(dst + offset, src, size);
    return size;
}

BPF_CALL_3(sbpf_memcmp, void *, dst, void *, src, size_t, len)
{
// pr_info("[%s] called\n", __func__);
    return memcmp(dst, src, len);
}

BPF_CALL_3(sbpf_memset, void *, dst, int, ch, size_t, len)
{
    return (uint64_t)memset(dst, ch, len);
}

const struct bpf_func_proto bpf_helper_memcpy_proto = {
	.func	   = bpf_helper_memcpy,
	.ret_type  = RET_VOID,
	.arg1_type = ARG_ANYTHING,
	.arg2_type = ARG_ANYTHING,
	.arg3_type = ARG_ANYTHING
};

const struct bpf_func_proto bpf_malloc_proto = {
    .func      = bpf_malloc,
    .ret_type  = RET_PTR_TO_ALLOC_MEM_OR_NULL,
    .arg1_type = ARG_ANYTHING,
};

const struct bpf_func_proto bpf_free_proto = {
        .func = bpf_free,
        .ret_type = RET_VOID,
        .arg1_type = ARG_ANYTHING,
};

const struct bpf_func_proto bpf_mem_read_proto = {
        .func = bpf_mem_read,
        .ret_type = RET_VOID,
        .arg1_type = ARG_ANYTHING,
        .arg2_type = ARG_ANYTHING,
        .arg3_type = ARG_ANYTHING,
        .arg4_type = ARG_ANYTHING,
        .arg5_type = ARG_ANYTHING,
};

const struct bpf_func_proto bpf_mem_write_proto = {
        .func = bpf_mem_write,
        .ret_type = RET_VOID,
        .arg1_type = ARG_ANYTHING,
        .arg2_type = ARG_ANYTHING,
        .arg3_type = ARG_ANYTHING,
        .arg4_type = ARG_ANYTHING,
        .arg5_type = ARG_ANYTHING,
};

const struct bpf_func_proto sbpf_memcmp_proto = {
        .func	   = sbpf_memcmp,
        .ret_type  = RET_INTEGER,
        .arg1_type = ARG_ANYTHING,
        .arg2_type = ARG_ANYTHING,
        .arg3_type = ARG_ANYTHING
};

const struct bpf_func_proto sbpf_memset_proto = {
        .func	   = sbpf_memset,
        .ret_type  = RET_PTR_TO_ALLOC_MEM_OR_NULL,
        .arg1_type = ARG_ANYTHING,
        .arg2_type = ARG_ANYTHING,
        .arg3_type = ARG_ANYTHING
};

const struct bpf_func_proto *
lio_prog_func_proto(enum bpf_func_id func_id, const struct bpf_prog *prog)
{
	switch (func_id) {
	case BPF_FUNC_helper_memcpy:
		return &bpf_helper_memcpy_proto;
	case BPF_FUNC_trace_printk:
		return &bpf_trace_printk_proto;
    case BPF_FUNC_malloc:
        return &bpf_malloc_proto;
    case BPF_FUNC_free:
        return &bpf_free_proto;
    case BPF_FUNC_mem_read:
        return &bpf_mem_read_proto;
    case BPF_FUNC_mem_write:
        return &bpf_mem_write_proto;
    case BPF_FUNC_memcmp:
        return &sbpf_memcmp_proto;
    case BPF_FUNC_memset:
        return &sbpf_memset_proto;
	}
	return NULL;
}

static bool lio_prog_is_valid_access(int off, int size, enum bpf_access_type type,
				    const struct bpf_prog *prog,
				    struct bpf_insn_access_aux *info)
{
    return true;
}

const struct bpf_verifier_ops lambda_io_verifier_ops = {
    .get_func_proto = lio_prog_func_proto,
    .is_valid_access = lio_prog_is_valid_access,
};

const struct bpf_prog_ops lambda_io_prog_ops = {
};
