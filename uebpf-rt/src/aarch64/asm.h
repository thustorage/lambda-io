#ifndef _UEBPF_AARCH64_ASM_H_
#define _UEBPF_AARCH64_ASM_H_

/*
 * #imm16 values used for BRK instruction generation
 * 0x004: for installing kprobes
 * 0x005: for installing uprobes
 * 0x006: for kprobe software single-step
 * Allowed values for kgdb are 0x400 - 0x7ff
 * 0x100: for triggering a fault on purpose (reserved)
 * 0x400: for dynamic BRK instruction
 * 0x401: for compile time BRK instruction
 * 0x800: kernel-mode BUG() and WARN() traps
 * 0x9xx: tag-based KASAN trap (allowed values 0x900 - 0x9ff)
 */
#define KPROBES_BRK_IMM			0x004
#define UPROBES_BRK_IMM			0x005
#define KPROBES_BRK_SS_IMM		0x006
#define FAULT_BRK_IMM			0x100
#define KGDB_DYN_DBG_BRK_IMM		0x400
#define KGDB_COMPILED_DBG_BRK_IMM	0x401
#define BUG_BRK_IMM			0x800
#define KASAN_BRK_IMM			0x900
#define KASAN_BRK_MASK			0x0ff

/*
 * BRK instruction encoding
 * The #imm16 value should be placed at bits[20:5] within BRK ins
 */
#define AARCH64_BREAK_MON	0xd4200000
#define AARCH64_BREAK_FAULT	(AARCH64_BREAK_MON | (FAULT_BRK_IMM << 5))

#endif
