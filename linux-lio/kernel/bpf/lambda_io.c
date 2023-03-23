#include <linux/bpf.h>
#include <linux/filter.h>
#include <linux/proc_fs.h>
#include <linux/lio.h>

bool enable_bpf_check = true;

BPF_CALL_3(bpf_helper_memcpy, void *, dst, void *, src, size_t, len)
{
	// pr_info("[%s] called %px <= %px, %lu\n", __func__, dst, src, len);

	memcpy(dst, src, len);
	return 0;
}

const struct bpf_func_proto bpf_helper_memcpy_proto = {
	.func	   = bpf_helper_memcpy,
	.ret_type  = RET_VOID,
	.arg1_type = ARG_ANYTHING,
	.arg2_type = ARG_ANYTHING,
	.arg3_type = ARG_ANYTHING
};


BPF_CALL_1(bpf_malloc, size_t, size)
{
    return (uint64_t)kvmalloc(size, GFP_KERNEL);
}

BPF_CALL_1(bpf_free, void *, pt)
{
    kvfree(pt);
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
	return memset(dst, ch, len);
}

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
	default:
    	return bpf_tracing_func_proto(func_id, prog);
	}
}

static bool lio_prog_is_valid_access(int off, int size, enum bpf_access_type type,
				    const struct bpf_prog *prog,
				    struct bpf_insn_access_aux *info)
{
    return true;

	// if (off < 0 || off >= sizeof(__u64) * MAX_BPF_FUNC_ARGS)
	// 	return false;
	// if (type != BPF_READ)
	// 	return false;
	// if (off % size != 0)
	// 	return false;

	// BUILD_BUG_ON(PERF_MAX_TRACE_SIZE % sizeof(__u64));
	// return true;
}

const struct bpf_verifier_ops lambda_io_verifier_ops = {
    .get_func_proto = lio_prog_func_proto,
    .is_valid_access = lio_prog_is_valid_access,
};

const struct bpf_prog_ops lambda_io_prog_ops = {
};

static ssize_t
lio_proc_read(struct file *file, char __user *buf,
		      size_t len, loff_t * offset)
{
	char str_buf[2] = "0\n";
	size_t copy_len = min_t(size_t, len, 2);
	if (enable_bpf_check) {
		str_buf[0] = '1';
	}

	if (*offset > 0) {
		return 0;
	}
	
	if (copy_to_user(buf, str_buf, copy_len)) {
		return -EFAULT;
	}

	lio_pr(info, "enable_bpf_check=%u", enable_bpf_check);

	*offset = len;
	return len;
}

static ssize_t	
lio_proc_write(struct file *file, const char __user *buf, 
			size_t len, loff_t *offset)
{
	char flag;

	if (*offset > 0) {
		return -EFAULT;
	}

	if (copy_from_user(&flag, buf, 1)) {
		return -EFAULT;
	}	
	// lio_pr(info, "%c", msg[0]);
	switch (flag) {
		case '0':
			enable_bpf_check = false;
			lio_pr(info, "disable bpf_check");
			break;
		case '1':
			enable_bpf_check = true;
			lio_pr(info, "enable bpf_check");
			break;
		default:
			lio_pr(info, "unknown char");
	}

	*offset = len;
    return len;
}

static const struct proc_ops lio_proc_fops = {
	.proc_read   = lio_proc_read,
	.proc_write  = lio_proc_write,
};

static int __init lambda_io_init(void)
{
    struct proc_dir_entry *entry;

    entry = proc_create("lio_prog_check", S_IFREG | 0644 , NULL, &lio_proc_fops);
    if (!entry) {
        return -ENOMEM;
    }

	lio_pr(info, "");

    return 0;
}

fs_initcall(lambda_io_init);
