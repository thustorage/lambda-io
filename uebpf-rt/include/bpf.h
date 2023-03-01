#ifndef UEBPF_BPF_H_
#define UEBPF_BPF_H_
#include <stddef.h>
#include <err.h>
#include <types.h>
#include <stdlib.h>
#include <assert.h>
#include <types.h>
#include <uapi-bpf.h>
#include <util.h>

#define BPF_OBJ_NAME_LEN 16U

#define PAGE_SIZE 4096
#define BPF_COMPLEXITY_LIMIT_INSNS      1000000 /* yes. 1M insns */
#define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]))

/* kernel to user malloc/free */
#define __user 
#define kmalloc(size, flag) malloc(size)
#define kcalloc(nelem, size, flag) calloc(nelem, size)
#define kvcallc(num, size, flag) calloc(num, size)
#define kzalloc(size, flag) calloc(1, size)
#define kmalloc_array(num, size, flag) calloc(num, size)
#define __vmalloc(size, flag) malloc(size)
#define vzalloc(size) calloc(1, size)
#define kvfree free
#define kfree free
#define vfree free
#define array_size(nelem, size) ((nelem) * (size))

#define WARN_ON_ONCE(cond) unlikely(cond)
#define WARN_ON(cond) (cond)
#define WARN_ONCE(cond, fmt, ...) do { if (cond) lio_pr(warn, fmt, ##__VA_ARGS__); } while(0)
#define BUG_ON(cond) assert(!(cond))

/* types of values stored in eBPF registers */
/* Pointer types represent:
 * pointer
 * pointer + imm
 * pointer + (u16) var
 * pointer + (u16) var + imm
 * if (range > 0) then [ptr, ptr + range - off) is safe to access
 * if (id > 0) means that some 'var' was added
 * if (off > 0) means that 'imm' was added
 */
enum bpf_reg_type {
	NOT_INIT = 0,		 /* nothing was written into register */
	SCALAR_VALUE,		 /* reg doesn't contain a valid pointer */
	PTR_TO_CTX,		 /* reg points to bpf_context */
	CONST_PTR_TO_MAP,	 /* reg points to struct bpf_map */
	PTR_TO_MAP_VALUE,	 /* reg points to map element value */
	PTR_TO_MAP_VALUE_OR_NULL,/* points to map elem value or NULL */
	PTR_TO_STACK,		 /* reg == frame_pointer + offset */
	PTR_TO_PACKET_META,	 /* skb->data - meta_len */
	PTR_TO_PACKET,		 /* reg points to skb->data */
	PTR_TO_PACKET_END,	 /* skb->data + headlen */
	PTR_TO_FLOW_KEYS,	 /* reg points to bpf_flow_keys */
	PTR_TO_SOCKET,		 /* reg points to struct bpf_sock */
	PTR_TO_SOCKET_OR_NULL,	 /* reg points to struct bpf_sock or NULL */
	PTR_TO_SOCK_COMMON,	 /* reg points to sock_common */
	PTR_TO_SOCK_COMMON_OR_NULL, /* reg points to sock_common or NULL */
	PTR_TO_TCP_SOCK,	 /* reg points to struct tcp_sock */
	PTR_TO_TCP_SOCK_OR_NULL, /* reg points to struct tcp_sock or NULL */
	PTR_TO_TP_BUFFER,	 /* reg points to a writable raw tp's buffer */
	PTR_TO_XDP_SOCK,	 /* reg points to struct xdp_sock */
	/* PTR_TO_BTF_ID points to a kernel struct that does not need
	 * to be null checked by the BPF program. This does not imply the
	 * pointer is _not_ null and in practice this can easily be a null
	 * pointer when reading pointer chains. The assumption is program
	 * context will handle null pointer dereference typically via fault
	 * handling. The verifier must keep this in mind and can make no
	 * assumptions about null or non-null when doing branch analysis.
	 * Further, when passed into helpers the helpers can not, without
	 * additional context, assume the value is non-null.
	 */
	PTR_TO_BTF_ID,
	/* PTR_TO_BTF_ID_OR_NULL points to a kernel struct that has not
	 * been checked for null. Used primarily to inform the verifier
	 * an explicit null check is required for this struct.
	 */
	PTR_TO_BTF_ID_OR_NULL,
	PTR_TO_MEM,		 /* reg points to valid memory region */
	PTR_TO_MEM_OR_NULL,	 /* reg points to valid memory region or NULL */
	PTR_TO_RDONLY_BUF,	 /* reg points to a readonly buffer */
	PTR_TO_RDONLY_BUF_OR_NULL, /* reg points to a readonly buffer or NULL */
	PTR_TO_RDWR_BUF,	 /* reg points to a read/write buffer */
	PTR_TO_RDWR_BUF_OR_NULL, /* reg points to a read/write buffer or NULL */
	PTR_TO_PERCPU_BTF_ID,	 /* reg points to a percpu kernel variable */
};

enum bpf_access_type {
	BPF_READ = 1,
	BPF_WRITE = 2
};

enum bpf_text_poke_type {
	BPF_MOD_CALL,
	BPF_MOD_JUMP,
};

/* ArgX, context and stack frame pointer register positions. Note,
 * Arg1, Arg2, Arg3, etc are used as argument mappings of function
 * calls in BPF_CALL instruction.
 */
#define BPF_REG_ARG1	BPF_REG_1
#define BPF_REG_ARG2	BPF_REG_2
#define BPF_REG_ARG3	BPF_REG_3
#define BPF_REG_ARG4	BPF_REG_4
#define BPF_REG_ARG5	BPF_REG_5
#define BPF_REG_CTX	BPF_REG_6
#define BPF_REG_FP	BPF_REG_10

/* BPF program can access up to 512 bytes of stack space. */
#define MAX_BPF_STACK	512


/* * generate bpf codes
 */
/* Memory store, *(uint *) (dst_reg + off16) = imm32 */

#define BPF_ST_MEM(SIZE, DST, OFF, IMM)				\
	((struct bpf_insn) {					\
		.code  = BPF_ST | BPF_SIZE(SIZE) | BPF_MEM,	\
		.dst_reg = DST,					\
		.src_reg = 0,					\
		.off   = OFF,					\
		.imm   = IMM })

/* ALU ops on immediates, bpf_add|sub|...: dst_reg += imm32 */

#define BPF_ALU64_IMM(OP, DST, IMM)				\
	((struct bpf_insn) {					\
		.code  = BPF_ALU64 | BPF_OP(OP) | BPF_K,	\
		.dst_reg = DST,					\
		.src_reg = 0,					\
		.off   = 0,					\
		.imm   = IMM })

#define BPF_ALU32_IMM(OP, DST, IMM)				\
	((struct bpf_insn) {					\
		.code  = BPF_ALU | BPF_OP(OP) | BPF_K,		\
		.dst_reg = DST,					\
		.src_reg = 0,					\
		.off   = 0,					\
		.imm   = IMM })

/* Raw code statement block */

#define BPF_RAW_INSN(CODE, DST, SRC, OFF, IMM)			\
	((struct bpf_insn) {					\
		.code  = CODE,					\
		.dst_reg = DST,					\
		.src_reg = SRC,					\
		.off   = OFF,					\
		.imm   = IMM })

/* ALU ops on registers, bpf_add|sub|...: dst_reg += src_reg */

#define BPF_ALU64_REG(OP, DST, SRC)				\
	((struct bpf_insn) {					\
		.code  = BPF_ALU64 | BPF_OP(OP) | BPF_X,	\
		.dst_reg = DST,					\
		.src_reg = SRC,					\
		.off   = 0,					\
		.imm   = 0 })

#define BPF_ALU32_REG(OP, DST, SRC)				\
	((struct bpf_insn) {					\
		.code  = BPF_ALU | BPF_OP(OP) | BPF_X,		\
		.dst_reg = DST,					\
		.src_reg = SRC,					\
		.off   = 0,					\
		.imm   = 0 })

		/* Conditional jumps against immediates, if (dst_reg 'op' imm32) goto pc + off16 */

#define BPF_JMP_IMM(OP, DST, IMM, OFF)				\
	((struct bpf_insn) {					\
		.code  = BPF_JMP | BPF_OP(OP) | BPF_K,		\
		.dst_reg = DST,					\
		.src_reg = 0,					\
		.off   = OFF,					\
		.imm   = IMM })

#define BPF_MOV32_REG(DST, SRC)					\
	((struct bpf_insn) {					\
		.code  = BPF_ALU | BPF_MOV | BPF_X,		\
		.dst_reg = DST,					\
		.src_reg = SRC,					\
		.off   = 0,					\
		.imm   = 0 })

/* Kernel hidden auxiliary/helper register. */
#define BPF_REG_AX		MAX_BPF_REG
#define MAX_BPF_EXT_REG		(MAX_BPF_REG + 1)
#define MAX_BPF_JIT_REG		MAX_BPF_EXT_REG

/* unused opcode to mark special call to bpf_tail_call() helper */
#define BPF_TAIL_CALL	0xf0

/* unused opcode to mark special load instruction. Same as BPF_ABS */
#define BPF_PROBE_MEM	0x20

#define MAX_BPF_FUNC_ARGS 12
struct btf_func_model {
	u8 ret_size;
	u8 nr_args;
	u8 arg_size[MAX_BPF_FUNC_ARGS];
};

struct exception_table_entry {
	int insn, fixup, handler;
};
typedef void (*bpf_jit_fill_hole_t)(void *area, unsigned int size);
/* Some arches need doubleword alignment for their instructions and/or data */
#define BPF_IMAGE_ALIGNMENT 8

struct bpf_binary_header {
	u32 pages;
	u8 image[] __aligned(BPF_IMAGE_ALIGNMENT);
};

#define BPF_MOV32_IMM(DST, IMM)					\
	((struct bpf_insn) {					\
		.code  = BPF_ALU | BPF_MOV | BPF_K,		\
		.dst_reg = DST,					\
		.src_reg = 0,					\
		.off   = 0,					\
		.imm   = IMM })

/* BPF_LD_IMM64 macro encodes single 'load 64-bit immediate' insn */
#define BPF_LD_IMM64(DST, IMM)					\
	BPF_LD_IMM64_RAW(DST, 0, IMM)

#define BPF_LD_IMM64_RAW(DST, SRC, IMM)				\
	((struct bpf_insn) {					\
		.code  = BPF_LD | BPF_DW | BPF_IMM,		\
		.dst_reg = DST,					\
		.src_reg = SRC,					\
		.off   = 0,					\
		.imm   = (__u32) (IMM) }),			\
	((struct bpf_insn) {					\
		.code  = 0, /* zero is reserved opcode */	\
		.dst_reg = 0,					\
		.src_reg = 0,					\
		.off   = 0,					\
		.imm   = ((__u64) (IMM)) >> 32 })

/* Special form of mov32, used for doing explicit zero extension on dst. */
#define BPF_ZEXT_REG(DST)					\
	((struct bpf_insn) {					\
		.code  = BPF_ALU | BPF_MOV | BPF_X,		\
		.dst_reg = DST,					\
		.src_reg = DST,					\
		.off   = 0,					\
		.imm   = 1 })

#define BPF_LDST_BYTES(insn)					\
	({							\
		const int __size = bpf_size_to_bytes(BPF_SIZE((insn)->code)); \
		WARN_ON(__size < 0);				\
		__size;						\
	})

#define bpf_size_to_bytes(bpf_size)				\
({								\
	int bytes = -EINVAL;					\
								\
	if (bpf_size == BPF_B)					\
		bytes = sizeof(u8);				\
	else if (bpf_size == BPF_H)				\
		bytes = sizeof(u16);				\
	else if (bpf_size == BPF_W)				\
		bytes = sizeof(u32);				\
	else if (bpf_size == BPF_DW)				\
		bytes = sizeof(u64);				\
								\
	bytes;							\
})

#define bytes_to_bpf_size(bytes)				\
({								\
	int bpf_size = -EINVAL;					\
								\
	if (bytes == sizeof(u8))				\
		bpf_size = BPF_B;				\
	else if (bytes == sizeof(u16))				\
		bpf_size = BPF_H;				\
	else if (bytes == sizeof(u32))				\
		bpf_size = BPF_W;				\
	else if (bytes == sizeof(u64))				\
		bpf_size = BPF_DW;				\
								\
	bpf_size;						\
})

#define __BPF_MAP_0(m, v, ...) v
#define __BPF_MAP_1(m, v, t, a, ...) m(t, a)
#define __BPF_MAP_2(m, v, t, a, ...) m(t, a), __BPF_MAP_1(m, v, __VA_ARGS__)
#define __BPF_MAP_3(m, v, t, a, ...) m(t, a), __BPF_MAP_2(m, v, __VA_ARGS__)
#define __BPF_MAP_4(m, v, t, a, ...) m(t, a), __BPF_MAP_3(m, v, __VA_ARGS__)
#define __BPF_MAP_5(m, v, t, a, ...) m(t, a), __BPF_MAP_4(m, v, __VA_ARGS__)

#define __BPF_REG_0(...) __BPF_PAD(5)
#define __BPF_REG_1(...) __BPF_MAP(1, __VA_ARGS__), __BPF_PAD(4)
#define __BPF_REG_2(...) __BPF_MAP(2, __VA_ARGS__), __BPF_PAD(3)
#define __BPF_REG_3(...) __BPF_MAP(3, __VA_ARGS__), __BPF_PAD(2)
#define __BPF_REG_4(...) __BPF_MAP(4, __VA_ARGS__), __BPF_PAD(1)
#define __BPF_REG_5(...) __BPF_MAP(5, __VA_ARGS__)

#define __BPF_MAP(n, ...) __BPF_MAP_##n(__VA_ARGS__)
#define __BPF_REG(n, ...) __BPF_REG_##n(__VA_ARGS__)

#define __BPF_CAST(t, a)						       \
	(__force t)							       \
	(__force							       \
	 typeof(__builtin_choose_expr(sizeof(t) == sizeof(unsigned long),      \
				      (unsigned long)0, (t)0))) a
#define __BPF_V void
#define __BPF_N

#define __BPF_DECL_ARGS(t, a) t   a
#define __BPF_DECL_REGS(t, a) u64 a

#define __BPF_PAD(n)							       \
	__BPF_MAP(n, __BPF_DECL_ARGS, __BPF_N, u64, __ur_1, u64, __ur_2,       \
		  u64, __ur_3, u64, __ur_4, u64, __ur_5)

#define BPF_CALL_x(x, name, ...)					       \
	static __always_inline						       \
	u64 ____##name(__BPF_MAP(x, __BPF_DECL_ARGS, __BPF_V, __VA_ARGS__));   \
	typedef u64 (*btf_##name)(__BPF_MAP(x, __BPF_DECL_ARGS, __BPF_V, __VA_ARGS__)); \
	u64 name(__BPF_REG(x, __BPF_DECL_REGS, __BPF_N, __VA_ARGS__));	       \
	u64 name(__BPF_REG(x, __BPF_DECL_REGS, __BPF_N, __VA_ARGS__))	       \
	{								       \
		return ((btf_##name)____##name)(__BPF_MAP(x,__BPF_CAST,__BPF_N,__VA_ARGS__));\
	}								       \
	static __always_inline						       \
	u64 ____##name(__BPF_MAP(x, __BPF_DECL_ARGS, __BPF_V, __VA_ARGS__))

#define BPF_CALL_0(name, ...)	BPF_CALL_x(0, name, __VA_ARGS__)
#define BPF_CALL_1(name, ...)	BPF_CALL_x(1, name, __VA_ARGS__)
#define BPF_CALL_2(name, ...)	BPF_CALL_x(2, name, __VA_ARGS__)
#define BPF_CALL_3(name, ...)	BPF_CALL_x(3, name, __VA_ARGS__)
#define BPF_CALL_4(name, ...)	BPF_CALL_x(4, name, __VA_ARGS__)
#define BPF_CALL_5(name, ...)	BPF_CALL_x(5, name, __VA_ARGS__)

struct bpf_func_info_aux {
	u16 linkage;
	bool unreliable;
};

struct bpf_prog_aux {
	s64 refcnt;
	// u32 used_map_cnt;
	u32 max_ctx_offset;
	// u32 max_pkt_offset;
	// u32 max_tp_access;
	u32 stack_depth;
	u32 id;
	u32 func_cnt; /* used by non-func prog as the number of func progs */
	u32 func_idx; /* 0 for non-func prog, the index in func array for func prog */
	// u32 attach_btf_id; /* in-kernel BTF type id to attach to */
	u32 ctx_arg_info_size;
	u32 max_rdonly_access;
	u32 max_rdwr_access;
	const struct bpf_ctx_arg_aux *ctx_arg_info;
	// struct mutex dst_mutex; /* protects dst_* pointers below, *after* prog becomes visible */
	struct bpf_prog *dst_prog;
	// struct bpf_trampoline *dst_trampoline;
	enum bpf_prog_type saved_dst_prog_type;
	enum bpf_attach_type saved_dst_attach_type;
	bool verifier_zext; /* Zero extensions has been inserted by verifier. */
	// bool offload_requested;
	// bool attach_btf_trace; /* true if attaching to BTF-enabled raw tp */
	bool func_proto_unreliable;
	// bool sleepable;
	bool tail_call_reachable;
	// enum bpf_tramp_prog_type trampoline_prog_type;
	// struct hlist_node tramp_hlist;
	/* BTF_KIND_FUNC_PROTO for valid attach_btf_id */
	// const struct btf_type *attach_func_proto;
	/* function name for valid attach_btf_id */
	const char *attach_func_name;
	struct bpf_prog **func;
	void *jit_data; /* JIT specific data. arch dependent */
	struct bpf_jit_poke_descriptor *poke_tab;
	u32 size_poke_tab;
	// struct bpf_ksym ksym;
	const struct bpf_prog_ops *ops;
	// struct bpf_map **used_maps;
	// struct mutex used_maps_mutex; /* mutex for used_maps and used_map_cnt */
	struct bpf_prog *prog;
	struct user_struct *user;
	// u64 load_time; /* ns since boottime */
	// struct bpf_map *cgroup_storage[MAX_BPF_CGROUP_STORAGE_TYPE];
	char name[BPF_OBJ_NAME_LEN];
#ifdef CONFIG_SECURITY
	void *security;
#endif
	// struct bpf_prog_offload *offload;
	// struct btf *btf;
	struct bpf_func_info *func_info;
	struct bpf_func_info_aux *func_info_aux;
	/* bpf_line_info loaded from userspace.  linfo->insn_off
	 * has the xlated insn offset.
	 * Both the main and sub prog share the same linfo.
	 * The subprog can access its first linfo by
	 * using the linfo_idx.
	 */
	struct bpf_line_info *linfo;
	/* jited_linfo is the jited addr of the linfo.  It has a
	 * one to one mapping to linfo:
	 * jited_linfo[i] is the jited addr for the linfo[i]->insn_off.
	 * Both the main and sub prog share the same jited_linfo.
	 * The subprog can access its first jited_linfo by
	 * using the linfo_idx.
	 */
	void **jited_linfo;
	u32 func_info_cnt;
	u32 nr_linfo;
	/* subprog can use linfo_idx to access its first linfo and
	 * jited_linfo.
	 * main prog always has linfo_idx == 0
	 */
	u32 linfo_idx;
	u32 num_exentries;
	// struct exception_table_entry *extable;
	// struct bpf_prog_stats __percpu *stats;
	// union {
	// 	struct work_struct work;
	// 	struct rcu_head	rcu;
	// };
};

#define BPF_TAG_SIZE 8
struct bpf_prog {
	u16			pages;		/* Number of allocated pages */
	u16			jited:1,	/* Is our filter JIT'ed? */
				jit_requested:1,/* archs need to JIT the prog */
				gpl_compatible:1, /* Is filter GPL compatible? */
				cb_access:1,	/* Is control block accessed? */
				dst_needed:1,	/* Do we need dst entry? */
				blinded:1,	/* Was blinded */
				is_func:1,	/* program is a bpf function */
				kprobe_override:1, /* Do we override a kprobe? */
				has_callchain_buf:1, /* callchain buffer allocated? */
				enforce_expected_attach_type:1, /* Enforce expected_attach_type checking at attach time */
				call_get_stack:1; /* Do we call bpf_get_stack() or bpf_get_stackid() */
	enum bpf_prog_type	type;		/* Type of BPF program */
	// enum bpf_attach_type	expected_attach_type; /* For some prog types */
	u32			len;		/* Number of filter blocks */
	u32			jited_len;	/* Size of jited insns in bytes */
	u8			tag[BPF_TAG_SIZE];
	struct bpf_prog_aux	*aux;		/* Auxiliary fields */
	struct sock_fprog_kern	*orig_prog;	/* Original BPF program */
	unsigned int		(*bpf_func)(const void *ctx,
					    const struct bpf_insn *insn);
	/* Instructions for interpreter */
	// struct sock_filter	insns[0];
	struct bpf_insn		insnsi[0];
};

/* Descriptor of pokes pointing /into/ the JITed image. */
struct bpf_jit_poke_descriptor {
	void *tailcall_target;
	void *tailcall_bypass;
	void *bypass_addr;
	// union {
	// 	struct {
	// 		struct bpf_map *map;
	// 		u32 key;
	// 	} tail_call;
	// };
	bool tailcall_target_stable;
	u8 adj_off;
	u16 reason;
	u32 insn_idx;
};


/* The information passed from prog-specific *_is_valid_access
 * back to the verifier.
 */
struct bpf_insn_access_aux {
	enum bpf_reg_type reg_type;
	union {
		int ctx_field_size;
		u32 btf_id;
	};
	struct bpf_verifier_log *log; /* for verbose logs */
};

/* type of values returned from helper functions */
enum bpf_return_type {
	RET_INTEGER,			/* function returns integer */
	RET_VOID,			/* function doesn't return anything */
	RET_PTR_TO_MAP_VALUE,		/* returns a pointer to map elem value */
	RET_PTR_TO_MAP_VALUE_OR_NULL,	/* returns a pointer to map elem value or NULL */
	RET_PTR_TO_SOCKET_OR_NULL,	/* returns a pointer to a socket or NULL */
	RET_PTR_TO_TCP_SOCK_OR_NULL,	/* returns a pointer to a tcp_sock or NULL */
	RET_PTR_TO_SOCK_COMMON_OR_NULL,	/* returns a pointer to a sock_common or NULL */
	RET_PTR_TO_ALLOC_MEM_OR_NULL,	/* returns a pointer to dynamically allocated memory or NULL */
	RET_PTR_TO_BTF_ID_OR_NULL,	/* returns a pointer to a btf_id or NULL */
	RET_PTR_TO_MEM_OR_BTF_ID_OR_NULL, /* returns a pointer to a valid memory or a btf_id or NULL */
	RET_PTR_TO_MEM_OR_BTF_ID,	/* returns a pointer to a valid memory or a btf_id */
};

/* function argument constraints */
enum bpf_arg_type {
	ARG_DONTCARE = 0,	/* unused argument in helper function */

	/* the following constraints used to prototype
	 * bpf_map_lookup/update/delete_elem() functions
	 */
	ARG_CONST_MAP_PTR,	/* const argument used as pointer to bpf_map */
	ARG_PTR_TO_MAP_KEY,	/* pointer to stack used as map key */
	ARG_PTR_TO_MAP_VALUE,	/* pointer to stack used as map value */
	ARG_PTR_TO_UNINIT_MAP_VALUE,	/* pointer to valid memory used to store a map value */
	ARG_PTR_TO_MAP_VALUE_OR_NULL,	/* pointer to stack used as map value or NULL */

	/* the following constraints used to prototype bpf_memcmp() and other
	 * functions that access data on eBPF program stack
	 */
	ARG_PTR_TO_MEM,		/* pointer to valid memory (stack, packet, map value) */
	ARG_PTR_TO_MEM_OR_NULL, /* pointer to valid memory or NULL */
	ARG_PTR_TO_UNINIT_MEM,	/* pointer to memory does not need to be initialized,
				 * helper function must fill all bytes or clear
				 * them in error case.
				 */

	ARG_CONST_SIZE,		/* number of bytes accessed from memory */
	ARG_CONST_SIZE_OR_ZERO,	/* number of bytes accessed from memory or 0 */

	ARG_PTR_TO_CTX,		/* pointer to context */
	ARG_PTR_TO_CTX_OR_NULL,	/* pointer to context or NULL */
	ARG_ANYTHING,		/* any (initialized) argument is ok */
	ARG_PTR_TO_SPIN_LOCK,	/* pointer to bpf_spin_lock */
	ARG_PTR_TO_SOCK_COMMON,	/* pointer to sock_common */
	ARG_PTR_TO_INT,		/* pointer to int */
	ARG_PTR_TO_LONG,	/* pointer to long */
	ARG_PTR_TO_SOCKET,	/* pointer to bpf_sock (fullsock) */
	ARG_PTR_TO_SOCKET_OR_NULL,	/* pointer to bpf_sock (fullsock) or NULL */
	ARG_PTR_TO_BTF_ID,	/* pointer to in-kernel struct */
	ARG_PTR_TO_ALLOC_MEM,	/* pointer to dynamically allocated memory */
	ARG_PTR_TO_ALLOC_MEM_OR_NULL,	/* pointer to dynamically allocated memory or NULL */
	ARG_CONST_ALLOC_SIZE_OR_ZERO,	/* number of allocated bytes requested */
	ARG_PTR_TO_BTF_ID_SOCK_COMMON,	/* pointer to in-kernel sock_common or bpf-mirrored bpf_sock */
	ARG_PTR_TO_PERCPU_BTF_ID,	/* pointer to in-kernel percpu type */
	__BPF_ARG_TYPE_MAX,
};

/* eBPF function prototype used by verifier to allow BPF_CALLs from eBPF programs
 * to in-kernel helper functions and for adjusting imm32 field in BPF_CALL
 * instructions after verifying
 */
struct bpf_func_proto {
	u64 (*func)(u64 r1, u64 r2, u64 r3, u64 r4, u64 r5);
	bool gpl_only;
	bool pkt_access;
	enum bpf_return_type ret_type;
	union {
		struct {
			enum bpf_arg_type arg1_type;
			enum bpf_arg_type arg2_type;
			enum bpf_arg_type arg3_type;
			enum bpf_arg_type arg4_type;
			enum bpf_arg_type arg5_type;
		};
		enum bpf_arg_type arg_type[5];
	};
	union {
		struct {
			u32 *arg1_btf_id;
			u32 *arg2_btf_id;
			u32 *arg3_btf_id;
			u32 *arg4_btf_id;
			u32 *arg5_btf_id;
		};
		u32 *arg_btf_id[5];
	};
	int *ret_btf_id; /* return value btf_id */
	bool (*allowed)(const struct bpf_prog *prog);
};

struct bpf_prog_ops {
	int (*test_run)(struct bpf_prog *prog, const union bpf_attr *kattr,
			union bpf_attr __user *uattr);
};

struct bpf_verifier_ops {
	/* return eBPF function prototype for verification */
	const struct bpf_func_proto *
	(*get_func_proto)(enum bpf_func_id func_id,
			  const struct bpf_prog *prog);

	/* return true if 'size' wide access at offset 'off' within bpf_context
	 * with 'type' (read or write) is allowed
	 */
	bool (*is_valid_access)(int off, int size, enum bpf_access_type type,
				const struct bpf_prog *prog,
				struct bpf_insn_access_aux *info);
	int (*gen_prologue)(struct bpf_insn *insn, bool direct_write,
			    const struct bpf_prog *prog);
	int (*gen_ld_abs)(const struct bpf_insn *orig,
			  struct bpf_insn *insn_buf);
	u32 (*convert_ctx_access)(enum bpf_access_type type,
				  const struct bpf_insn *src,
				  struct bpf_insn *dst,
				  struct bpf_prog *prog, u32 *target_size);
	// int (*btf_struct_access)(struct bpf_verifier_log *log,
	// 			 const struct btf_type *t, int off, int size,
	// 			 enum bpf_access_type atype,
	// 			 u32 *next_btf_id);
};

#define BPF_PROG_TYPE(_id, _name, prog_ctx_type, kern_ctx_type) \
	extern const struct bpf_prog_ops _name ## _prog_ops; \
	extern const struct bpf_verifier_ops _name ## _verifier_ops;
#define BPF_MAP_TYPE(_id, _ops) \
	extern const struct bpf_map_ops _ops;
#define BPF_LINK_TYPE(_id, _name)
#include <bpf_types.h>
#undef BPF_PROG_TYPE
#undef BPF_MAP_TYPE
#undef BPF_LINK_TYPE

typedef u32 (*bpf_convert_ctx_access_t)(enum bpf_access_type type,
					const struct bpf_insn *src,
					struct bpf_insn *dst,
					struct bpf_prog *prog,
					u32 *target_size);

static inline bool bpf_capable()
{
	return true;
}

static inline unsigned int bpf_prog_size(unsigned int proglen)
{
	return max(sizeof(struct bpf_prog),
		   offsetof(struct bpf_prog, insnsi[proglen]));
}

static inline u32 bpf_prog_insn_size(const struct bpf_prog *prog)
{
	return prog->len * sizeof(struct bpf_insn);
}

static int bpf_prog_alloc_id(struct bpf_prog *prog)
{
	return 1;
}

static inline bool bpf_allow_ptr_leaks(void)
{
	return true;
}

static inline bool bpf_allow_ptr_to_map_access(void)
{
	return true;
}

static inline bool bpf_bypass_spec_v1(void)
{
	return true;
}

static inline bool bpf_bypass_spec_v4(void)
{
	return true;
}

static inline bool bpf_prog_is_dev_bound(struct bpf_prog_aux *aux)
{
	return false;
}

static inline u32 bpf_ctx_off_adjust_machine(u32 size)
{
	const u32 size_machine = sizeof(unsigned long);

	if (size > size_machine && size % size_machine == 0)
		size = size_machine;

	return size;
}

static inline u8
bpf_ctx_narrow_access_offset(u32 off, u32 size, u32 size_default)
{
	u8 access_off = off & (size_default - 1);

// #ifdef __LITTLE_ENDIAN
	return access_off;
// #else
	// return size_default - (access_off + size);
// #endif
}

static inline u64 ktime_get_ns()
{
	return wall_time_ns();
}

int bpf_check(struct bpf_prog **prog, union bpf_attr *attr,
	      union bpf_attr *uattr);

struct bpf_prog *bpf_prog_select_runtime(struct bpf_prog *fp, int *err);

struct bpf_prog *bpf_patch_insn_single(struct bpf_prog *prog, u32 off,
				       const struct bpf_insn *patch, u32 len);

u64 __bpf_call_base(u64 r1, u64 r2, u64 r3, u64 r4, u64 r5);

void bpf_prog_fill_jited_linfo(struct bpf_prog *prog,
							   const u32 *insn_to_jit_off);
void *malloc_exec(size_t size);
void free_exec(void *addr, size_t size);

struct bpf_prog *bpf_prog_alloc(unsigned int size);
void bpf_prog_free(struct bpf_prog *prog);

#endif
