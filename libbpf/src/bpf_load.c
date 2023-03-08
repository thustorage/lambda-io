// SPDX-License-Identifier: GPL-2.0
#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <libelf.h>
#include <gelf.h>
#include <errno.h>
#include <unistd.h>
#include <string.h>
#include <stdbool.h>
#include <stdlib.h>
// #include <linux/bpf.h>
// #include <linux/filter.h>
// #include <linux/perf_event.h>
// #include <linux/netlink.h>
// #include <linux/rtnetlink.h>
#include <linux/types.h>
#include <sys/socket.h>
#include <sys/syscall.h>
#include <sys/ioctl.h>
#include <sys/mman.h>
#include <poll.h>
#include <ctype.h>
#include <assert.h>
#include "bpf_load.h"
#include "bpf.h"

#define UEBPF 1
#ifdef UEBPF
#include "uebpf.h"
#endif
#define DEBUGFS "/sys/kernel/debug/tracing/"
#define min(x, y) ((x) < (y) ? (x) : (y))

static char license[128];
static int kern_version;
static bool processed_sec[128];
char bpf_log_buf[BPF_LOG_BUF_SIZE];
int map_fd[MAX_MAPS];
int prog_fd[MAX_PROGS];
int event_fd[MAX_PROGS];
int prog_cnt;
int prog_array_fd = -1;

struct bpf_map_data map_data[MAX_MAPS];
int map_data_count;

// We store it here to avoid passing this value through function call stack.
// Make sure to call the function exclusively!
bool use_uebpf_call = true;

#ifndef UEBPF
static int populate_prog_array(const char *event, int prog_fd)
{
	int ind = atoi(event), err;

	err = bpf_map_update_elem(prog_array_fd, &ind, &prog_fd, BPF_ANY);
	if (err < 0) {
		printf("failed to store prog_fd in prog_array\n");
		return -1;
	}
	return 0;
}
#endif

static int write_kprobe_events(const char *val)
{
	int fd, ret, flags;

	if (val == NULL)
		return -1;
	else if (val[0] == '\0')
		flags = O_WRONLY | O_TRUNC;
	else
		flags = O_WRONLY | O_APPEND;

	fd = open(DEBUGFS "kprobe_events", flags);

	ret = write(fd, val, strlen(val));
	close(fd);

	return ret;
}

static inline int u_sys_bpf_prog_load(union bpf_attr *attr, unsigned int size)
{
	return uebpf_rt_load(attr, size);
}

static inline int sys_bpf(enum bpf_cmd cmd, union bpf_attr *attr,
			  unsigned int size)
{
	return syscall(__NR_bpf, cmd, attr, size);
}

static inline int k_sys_bpf_prog_load(union bpf_attr *attr, unsigned int size)
{
	int fd;

	do {
		fd = sys_bpf(BPF_PROG_LOAD, attr, size);
	} while (fd < 0 && errno == EAGAIN);

	return fd;
}

static inline int sys_bpf_prog_load(union bpf_attr *attr, unsigned int size)
{
    return use_uebpf_call ? u_sys_bpf_prog_load(attr, size)
        : k_sys_bpf_prog_load(attr, size);
}

static inline __u64 ptr_to_u64(const void *ptr)
{
	return (__u64) (unsigned long) ptr;
}

int bpf_load_program_xattr(const struct bpf_load_program_attr *load_attr,
			   char *log_buf, size_t log_buf_sz)
{
	void *finfo = NULL, *linfo = NULL;
	union bpf_attr attr;
	__u32 log_level;
	int fd;

	if (!load_attr || !log_buf != !log_buf_sz)
		return -EINVAL;

	log_level = load_attr->log_level;
	if (log_level > (4 | 2 | 1) || (log_level && !log_buf))
		return -EINVAL;

	memset(&attr, 0, sizeof(attr));
	attr.prog_type = load_attr->prog_type;
	attr.expected_attach_type = load_attr->expected_attach_type;
	if (attr.prog_type == BPF_PROG_TYPE_STRUCT_OPS ||
	    attr.prog_type == BPF_PROG_TYPE_LSM) {
		attr.attach_btf_id = load_attr->attach_btf_id;
	} else if (attr.prog_type == BPF_PROG_TYPE_TRACING ||
		   attr.prog_type == BPF_PROG_TYPE_EXT) {
		attr.attach_btf_id = load_attr->attach_btf_id;
		attr.attach_prog_fd = load_attr->attach_prog_fd;
	} else {
		attr.prog_ifindex = load_attr->prog_ifindex;
		attr.kern_version = load_attr->kern_version;
	}
	attr.insn_cnt = (__u32)load_attr->insns_cnt;
	attr.insns = ptr_to_u64(load_attr->insns);
	attr.license = ptr_to_u64(load_attr->license);

	attr.log_level = log_level;
	if (log_level) {
		attr.log_buf = ptr_to_u64(log_buf);
		attr.log_size = log_buf_sz;
	} else {
		attr.log_buf = ptr_to_u64(NULL);
		attr.log_size = 0;
	}

	attr.prog_btf_fd = load_attr->prog_btf_fd;
	attr.func_info_rec_size = load_attr->func_info_rec_size;
	attr.func_info_cnt = load_attr->func_info_cnt;
	attr.func_info = ptr_to_u64(load_attr->func_info);
	attr.line_info_rec_size = load_attr->line_info_rec_size;
	attr.line_info_cnt = load_attr->line_info_cnt;
	attr.line_info = ptr_to_u64(load_attr->line_info);
	if (load_attr->name)
		memcpy(attr.prog_name, load_attr->name,
		       min(strlen(load_attr->name), BPF_OBJ_NAME_LEN - 1));
	attr.prog_flags = load_attr->prog_flags;

	fd = sys_bpf_prog_load(&attr, sizeof(attr));
	if (fd >= 0)
		return fd;

	if (log_level || !log_buf)
		goto done;

	/* Try again with log */
	attr.log_buf = ptr_to_u64(log_buf);
	attr.log_size = log_buf_sz;
	attr.log_level = 1;
	log_buf[0] = 0;
	fd = sys_bpf_prog_load(&attr, sizeof(attr));
done:
	free(finfo);
	free(linfo);
	return fd;
}

static int bpf_load_program_with_name(enum bpf_prog_type type, const struct bpf_insn *insns,
		     size_t insns_cnt, const char *license,
		     __u32 kern_version, char *log_buf,
		     size_t log_buf_sz, const char *name)
{
	struct bpf_load_program_attr load_attr;

	memset(&load_attr, 0, sizeof(struct bpf_load_program_attr));
	load_attr.prog_type = type;
	load_attr.expected_attach_type = 0;
	load_attr.name = name;
	load_attr.insns = insns;
	load_attr.insns_cnt = insns_cnt;
	load_attr.license = license;
	load_attr.kern_version = kern_version;

	return bpf_load_program_xattr(&load_attr, log_buf, log_buf_sz);
}

static int load_and_attach(const char *event, struct bpf_insn *prog, int size)
{
	bool is_socket = strncmp(event, "socket", 6) == 0;
	bool is_kprobe = strncmp(event, "kprobe/", 7) == 0;
	bool is_kretprobe = strncmp(event, "kretprobe/", 10) == 0;
	bool is_tracepoint = strncmp(event, "tracepoint/", 11) == 0;
	bool is_raw_tracepoint = strncmp(event, "raw_tracepoint/", 15) == 0;
	bool is_xdp = strncmp(event, "xdp", 3) == 0;
	bool is_perf_event = strncmp(event, "perf_event", 10) == 0;
	bool is_cgroup_skb = strncmp(event, "cgroup/skb", 10) == 0;
	bool is_cgroup_sk = strncmp(event, "cgroup/sock", 11) == 0;
	bool is_sockops = strncmp(event, "sockops", 7) == 0;
	bool is_sk_skb = strncmp(event, "sk_skb", 6) == 0;
	bool is_sk_msg = strncmp(event, "sk_msg", 6) == 0;
	bool is_lambda_io = strncmp(event, "lambda_io", 9) == 0;
	const char *name = NULL;
	size_t insns_cnt = size / sizeof(struct bpf_insn);
	enum bpf_prog_type prog_type;
	// char buf[256];
	int fd;
	// int efd, err, id;
	// struct perf_event_attr attr = {};

	// attr.type = PERF_TYPE_TRACEPOINT;
	// attr.sample_type = PERF_SAMPLE_RAW;
	// attr.sample_period = 1;
	// attr.wakeup_events = 1;

	if (is_socket) {
		prog_type = BPF_PROG_TYPE_SOCKET_FILTER;
	} else if (is_kprobe || is_kretprobe) {
		prog_type = BPF_PROG_TYPE_KPROBE;
	} else if (is_tracepoint) {
		prog_type = BPF_PROG_TYPE_TRACEPOINT;
	} else if (is_raw_tracepoint) {
		prog_type = BPF_PROG_TYPE_RAW_TRACEPOINT;
	} else if (is_xdp) {
		prog_type = BPF_PROG_TYPE_XDP;
	} else if (is_perf_event) {
		prog_type = BPF_PROG_TYPE_PERF_EVENT;
	} else if (is_cgroup_skb) {
		prog_type = BPF_PROG_TYPE_CGROUP_SKB;
	} else if (is_cgroup_sk) {
		prog_type = BPF_PROG_TYPE_CGROUP_SOCK;
	} else if (is_sockops) {
		prog_type = BPF_PROG_TYPE_SOCK_OPS;
	} else if (is_sk_skb) {
		prog_type = BPF_PROG_TYPE_SK_SKB;
	} else if (is_sk_msg) {
		prog_type = BPF_PROG_TYPE_SK_MSG;
	} else if (is_lambda_io) {
		prog_type = BPF_PROG_TYPE_LAMBDA_IO;
	} else {
		printf("Unknown event '%s'\n", event);
		return -1;
	}

	if (prog_cnt == MAX_PROGS)
		return -1;

	if (is_lambda_io) {
		event += 9;
		if (*event == '/') {
			name = event + 1;
		}
	}
	
	fd = bpf_load_program_with_name(prog_type, prog, insns_cnt, license, kern_version,
			bpf_log_buf, BPF_LOG_BUF_SIZE, name);
	if (fd < 0) {
		printf("bpf_load_program() err=%d\n%s", errno, bpf_log_buf);
		return -1;
	}

	prog_fd[prog_cnt++] = fd;

	if (is_lambda_io) {
		return fd;
	}
#ifndef UEBPF
	if (is_xdp || is_perf_event || is_cgroup_skb || is_cgroup_sk)
		return 0;

	if (is_socket || is_sockops || is_sk_skb || is_sk_msg) {
		if (is_socket)
			event += 6;
		else
			event += 7;
		if (*event != '/')
			return 0;
		event++;
		if (!isdigit(*event)) {
			printf("invalid prog number\n");
			return -1;
		}
		return populate_prog_array(event, fd);
	}

	if (is_raw_tracepoint) {
		efd = bpf_raw_tracepoint_open(event + 15, fd);
		if (efd < 0) {
			printf("tracepoint %s %s\n", event + 15, strerror(errno));
			return -1;
		}
		event_fd[prog_cnt - 1] = efd;
		return 0;
	}

	if (is_kprobe || is_kretprobe) {
		bool need_normal_check = true;
		const char *event_prefix = "";

		if (is_kprobe)
			event += 7;
		else
			event += 10;

		if (*event == 0) {
			printf("event name cannot be empty\n");
			return -1;
		}

		if (isdigit(*event))
			return populate_prog_array(event, fd);

#ifdef __x86_64__
		if (strncmp(event, "sys_", 4) == 0) {
			snprintf(buf, sizeof(buf), "%c:__x64_%s __x64_%s",
				is_kprobe ? 'p' : 'r', event, event);
			err = write_kprobe_events(buf);
			if (err >= 0) {
				need_normal_check = false;
				event_prefix = "__x64_";
			}
		}
#endif
		if (need_normal_check) {
			snprintf(buf, sizeof(buf), "%c:%s %s",
				is_kprobe ? 'p' : 'r', event, event);
			err = write_kprobe_events(buf);
			if (err < 0) {
				printf("failed to create kprobe '%s' error '%s'\n",
				       event, strerror(errno));
				return -1;
			}
		}

		strcpy(buf, DEBUGFS);
		strcat(buf, "events/kprobes/");
		strcat(buf, event_prefix);
		strcat(buf, event);
		strcat(buf, "/id");
	} else if (is_tracepoint) {
		event += 11;

		if (*event == 0) {
			printf("event name cannot be empty\n");
			return -1;
		}
		strcpy(buf, DEBUGFS);
		strcat(buf, "events/");
		strcat(buf, event);
		strcat(buf, "/id");
	}
	efd = open(buf, O_RDONLY, 0);
	if (efd < 0) {
		printf("failed to open event %s\n", event);
		return -1;
	}

	err = read(efd, buf, sizeof(buf));
	if (err < 0 || err >= sizeof(buf)) {
		printf("read from '%s' failed '%s'\n", event, strerror(errno));
		return -1;
	}

	close(efd);

	buf[err] = 0;
	id = atoi(buf);
	attr.config = id;

	efd = sys_perf_event_open(&attr, -1/*pid*/, 0/*cpu*/, -1/*group_fd*/, 0);
	if (efd < 0) {
		printf("event %d fd %d err %s\n", id, efd, strerror(errno));
		return -1;
	}
	event_fd[prog_cnt - 1] = efd;
	err = ioctl(efd, PERF_EVENT_IOC_ENABLE, 0);
	if (err < 0) {
		printf("ioctl PERF_EVENT_IOC_ENABLE failed err %s\n",
		       strerror(errno));
		return -1;
	}
	err = ioctl(efd, PERF_EVENT_IOC_SET_BPF, fd);
	if (err < 0) {
		printf("ioctl PERF_EVENT_IOC_SET_BPF failed err %s\n",
		       strerror(errno));
		return -1;
	}
#endif

	return 0;
}

#ifndef UEBPF
static int load_maps(struct bpf_map_data *maps, int nr_maps,
		     fixup_map_cb fixup_map)
{
	int i, numa_node;

	for (i = 0; i < nr_maps; i++) {
		if (fixup_map) {
			fixup_map(&maps[i], i);
			/* Allow userspace to assign map FD prior to creation */
			if (maps[i].fd != -1) {
				map_fd[i] = maps[i].fd;
				continue;
			}
		}

		numa_node = maps[i].def.map_flags & BPF_F_NUMA_NODE ?
			maps[i].def.numa_node : -1;

		if (maps[i].def.type == BPF_MAP_TYPE_ARRAY_OF_MAPS ||
		    maps[i].def.type == BPF_MAP_TYPE_HASH_OF_MAPS) {
			int inner_map_fd = map_fd[maps[i].def.inner_map_idx];

			map_fd[i] = bpf_create_map_in_map_node(maps[i].def.type,
							maps[i].name,
							maps[i].def.key_size,
							inner_map_fd,
							maps[i].def.max_entries,
							maps[i].def.map_flags,
							numa_node);
		} else {
			map_fd[i] = bpf_create_map_node(maps[i].def.type,
							maps[i].name,
							maps[i].def.key_size,
							maps[i].def.value_size,
							maps[i].def.max_entries,
							maps[i].def.map_flags,
							numa_node);
		}
		if (map_fd[i] < 0) {
			printf("failed to create map %d (%s): %d %s\n",
			       i, maps[i].name, errno, strerror(errno));
			return 1;
		}
		maps[i].fd = map_fd[i];

		if (maps[i].def.type == BPF_MAP_TYPE_PROG_ARRAY)
			prog_array_fd = map_fd[i];
	}
	return 0;
}
#endif

static int get_sec(Elf *elf, int i, GElf_Ehdr *ehdr, char **shname,
		   GElf_Shdr *shdr, Elf_Data **data)
{
	Elf_Scn *scn;

	scn = elf_getscn(elf, i);
	if (!scn)
		return 1;

	if (gelf_getshdr(scn, shdr) != shdr)
		return 2;

	*shname = elf_strptr(elf, ehdr->e_shstrndx, shdr->sh_name);
	if (!*shname || !shdr->sh_size)
		return 3;

	*data = elf_getdata(scn, 0);
	if (!*data || elf_getdata(scn, *data) != NULL)
		return 4;

	return 0;
}

static int parse_relo_and_apply(Elf_Data *data, Elf_Data *symbols,
				GElf_Shdr *shdr, struct bpf_insn *insn,
				struct bpf_map_data *maps, int nr_maps)
{
	int i, nrels;

	nrels = shdr->sh_size / shdr->sh_entsize;

	for (i = 0; i < nrels; i++) {
		GElf_Sym sym;
		GElf_Rel rel;
		unsigned int insn_idx;
		bool match = false;
		// int j;
		int map_idx;

		gelf_getrel(data, i, &rel);

		insn_idx = rel.r_offset / sizeof(struct bpf_insn);

		gelf_getsym(symbols, GELF_R_SYM(rel.r_info), &sym);

		if (insn[insn_idx].code != (BPF_LD | BPF_IMM | BPF_DW)) {
			printf("invalid relo for insn[%d].code 0x%x\n",
			       insn_idx, insn[insn_idx].code);
			return 1;
		}
		insn[insn_idx].src_reg = BPF_PSEUDO_MAP_FD;

		/* Match FD relocation against recorded map_data[] offset */
		for (map_idx = 0; map_idx < nr_maps; map_idx++) {
			if (maps[map_idx].elf_offset == sym.st_value) {
				match = true;
				break;
			}
		}
		if (match) {
			insn[insn_idx].imm = maps[map_idx].fd;
		} else {
			printf("invalid relo for insn[%d] no map_data match\n",
			       insn_idx);
			return 1;
		}
	}

	return 0;
}

#ifndef UEBPF
static int cmp_symbols(const void *l, const void *r)
{
	const GElf_Sym *lsym = (const GElf_Sym *)l;
	const GElf_Sym *rsym = (const GElf_Sym *)r;

	if (lsym->st_value < rsym->st_value)
		return -1;
	else if (lsym->st_value > rsym->st_value)
		return 1;
	else
		return 0;
}

static int load_elf_maps_section(struct bpf_map_data *maps, int maps_shndx,
				 Elf *elf, Elf_Data *symbols, int strtabidx)
{
	int map_sz_elf, map_sz_copy;
	bool validate_zero = false;
	Elf_Data *data_maps;
	int i, nr_maps;
	GElf_Sym *sym;
	Elf_Scn *scn;
	int copy_sz;

	if (maps_shndx < 0)
		return -EINVAL;
	if (!symbols)
		return -EINVAL;

	/* Get data for maps section via elf index */
	scn = elf_getscn(elf, maps_shndx);
	if (scn)
		data_maps = elf_getdata(scn, NULL);
	if (!scn || !data_maps) {
		printf("Failed to get Elf_Data from maps section %d\n",
		       maps_shndx);
		return -EINVAL;
	}

	/* For each map get corrosponding symbol table entry */
	sym = calloc(MAX_MAPS+1, sizeof(GElf_Sym));
	for (i = 0, nr_maps = 0; i < symbols->d_size / sizeof(GElf_Sym); i++) {
		assert(nr_maps < MAX_MAPS+1);
		if (!gelf_getsym(symbols, i, &sym[nr_maps]))
			continue;
		if (sym[nr_maps].st_shndx != maps_shndx)
			continue;
		/* Only increment iif maps section */
		nr_maps++;
	}

	/* Align to map_fd[] order, via sort on offset in sym.st_value */
	qsort(sym, nr_maps, sizeof(GElf_Sym), cmp_symbols);

	/* Keeping compatible with ELF maps section changes
	 * ------------------------------------------------
	 * The program size of struct bpf_load_map_def is known by loader
	 * code, but struct stored in ELF file can be different.
	 *
	 * Unfortunately sym[i].st_size is zero.  To calculate the
	 * struct size stored in the ELF file, assume all struct have
	 * the same size, and simply divide with number of map
	 * symbols.
	 */
	map_sz_elf = data_maps->d_size / nr_maps;
	map_sz_copy = sizeof(struct bpf_load_map_def);
	if (map_sz_elf < map_sz_copy) {
		/*
		 * Backward compat, loading older ELF file with
		 * smaller struct, keeping remaining bytes zero.
		 */
		map_sz_copy = map_sz_elf;
	} else if (map_sz_elf > map_sz_copy) {
		/*
		 * Forward compat, loading newer ELF file with larger
		 * struct with unknown features. Assume zero means
		 * feature not used.  Thus, validate rest of struct
		 * data is zero.
		 */
		validate_zero = true;
	}

	/* Memcpy relevant part of ELF maps data to loader maps */
	for (i = 0; i < nr_maps; i++) {
		struct bpf_load_map_def *def;
		unsigned char *addr, *end;
		const char *map_name;
		size_t offset;

		map_name = elf_strptr(elf, strtabidx, sym[i].st_name);
		maps[i].name = strdup(map_name);
		if (!maps[i].name) {
			printf("strdup(%s): %s(%d)\n", map_name,
			       strerror(errno), errno);
			free(sym);
			return -errno;
		}

		/* Symbol value is offset into ELF maps section data area */
		offset = sym[i].st_value;
		def = (struct bpf_load_map_def *)(data_maps->d_buf + offset);
		maps[i].elf_offset = offset;
		memset(&maps[i].def, 0, sizeof(struct bpf_load_map_def));
		memcpy(&maps[i].def, def, map_sz_copy);

		/* Verify no newer features were requested */
		if (validate_zero) {
			addr = (unsigned char *) def + map_sz_copy;
			end  = (unsigned char *) def + map_sz_elf;
			for (; addr < end; addr++) {
				if (*addr != 0) {
					free(sym);
					return -EFBIG;
				}
			}
		}
	}

	free(sym);
	return nr_maps;
}
#endif

static int do_load_bpf_file(const char *path, fixup_map_cb fixup_map)
{
	int fd, i, ret;
	int maps_shndx = -1, strtabidx = -1;
	Elf *elf;
	GElf_Ehdr ehdr;
	GElf_Shdr shdr, shdr_prog;
	Elf_Data *data, *data_prog, *data_maps = NULL, *symbols = NULL;
	char *shname, *shname_prog;
	int nr_maps = 0;

#ifdef UEBPF
	(void) maps_shndx;
	(void) strtabidx;
	(void) data_maps;
#endif

	/* reset global variables */
	kern_version = 0;
	memset(license, 0, sizeof(license));
	memset(processed_sec, 0, sizeof(processed_sec));

	if (elf_version(EV_CURRENT) == EV_NONE)
		return 1;

	fd = open(path, O_RDONLY, 0);
	if (fd < 0) {
        perror(path);
        return -1;
    }
	printf("open(%s) as fd=%d\n", path, fd);

	elf = elf_begin(fd, ELF_C_READ, NULL);

	if (!elf)
		return 1;

	if (gelf_getehdr(elf, &ehdr) != &ehdr)
		return 1;

	/* clear all kprobes */
	i = write_kprobe_events("");

	/* scan over all elf sections to get license and map info */
	for (i = 1; i < ehdr.e_shnum; i++) {

		if (get_sec(elf, i, &ehdr, &shname, &shdr, &data))
			continue;

		if (0) /* helpful for llvm debugging */
			printf("section %d:%s data %p size %zd link %d flags %d\n",
			       i, shname, data->d_buf, data->d_size,
			       shdr.sh_link, (int) shdr.sh_flags);

		if (strcmp(shname, "license") == 0) {
			processed_sec[i] = true;
			memcpy(license, data->d_buf, data->d_size);
		} else if (strcmp(shname, "version") == 0) {
			processed_sec[i] = true;
			if (data->d_size != sizeof(int)) {
				printf("invalid size of version section %zd\n",
				       data->d_size);
				return 1;
			}
			memcpy(&kern_version, data->d_buf, sizeof(int));
		} else if (strcmp(shname, "maps") == 0) {
			int j;

			maps_shndx = i;
			data_maps = data;
			for (j = 0; j < MAX_MAPS; j++)
				map_data[j].fd = -1;
		} else if (shdr.sh_type == SHT_SYMTAB) {
			strtabidx = shdr.sh_link;
			symbols = data;
		}
	}

	ret = 1;

	if (!symbols) {
		printf("missing SHT_SYMTAB section\n");
		goto done;
	}

#ifndef UEBPF
	if (data_maps) {
		nr_maps = load_elf_maps_section(map_data, maps_shndx,
						elf, symbols, strtabidx);
		if (nr_maps < 0) {
			printf("Error: Failed loading ELF maps (errno:%d):%s\n",
			       nr_maps, strerror(-nr_maps));
			goto done;
		}
		if (load_maps(map_data, nr_maps, fixup_map))
			goto done;
		map_data_count = nr_maps;

		processed_sec[maps_shndx] = true;
	}
#endif

	/* process all relo sections, and rewrite bpf insns for maps */
	for (i = 1; i < ehdr.e_shnum; i++) {
		if (processed_sec[i])
			continue;

		if (get_sec(elf, i, &ehdr, &shname, &shdr, &data))
			continue;

		if (shdr.sh_type == SHT_REL) {
			struct bpf_insn *insns;

			/* locate prog sec that need map fixup (relocations) */
			if (get_sec(elf, shdr.sh_info, &ehdr, &shname_prog,
				    &shdr_prog, &data_prog))
				continue;

			if (shdr_prog.sh_type != SHT_PROGBITS ||
			    !(shdr_prog.sh_flags & SHF_EXECINSTR))
				continue;

			insns = (struct bpf_insn *) data_prog->d_buf;
			processed_sec[i] = true; /* relo section */

			if (parse_relo_and_apply(data, symbols, &shdr, insns,
						 map_data, nr_maps))
				continue;
		}
	}


	/* load programs */
	for (i = 1; i < ehdr.e_shnum; i++) {

		if (processed_sec[i])
			continue;

		if (get_sec(elf, i, &ehdr, &shname, &shdr, &data))
			continue;

		if (memcmp(shname, "kprobe/", 7) == 0 ||
		    memcmp(shname, "kretprobe/", 10) == 0 ||
		    memcmp(shname, "tracepoint/", 11) == 0 ||
		    memcmp(shname, "raw_tracepoint/", 15) == 0 ||
		    memcmp(shname, "xdp", 3) == 0 ||
		    memcmp(shname, "perf_event", 10) == 0 ||
		    memcmp(shname, "socket", 6) == 0 ||
		    memcmp(shname, "cgroup/", 7) == 0 ||
		    memcmp(shname, "sockops", 7) == 0 ||
		    memcmp(shname, "sk_skb", 6) == 0 ||
		    memcmp(shname, "sk_msg", 6) == 0 ||
			memcmp(shname, "lambda_io", 9) == 0
			) {
			ret = load_and_attach(shname, data->d_buf,
					      data->d_size);
			if (ret != 0)
				goto done;
		}
	}

done:
	close(fd);
	return ret;
}

int load_bpf_file(const char *path)
{
	return do_load_bpf_file(path, NULL);
}

int load_bpf_file_fixup_map(const char *path, fixup_map_cb fixup_map)
{
	return do_load_bpf_file(path, fixup_map);
}

int kebpf_load_file(const char *path)
{
    use_uebpf_call = false;
    return load_bpf_file(path);
}

void kebpf_read_trace_pipe(void)
{
    int trace_fd;

    trace_fd = open(DEBUGFS "trace_pipe", O_RDONLY, 0);
    if (trace_fd < 0)
        return;

    while (1) {
        static char buf[4096];
        ssize_t sz;

        sz = read(trace_fd, buf, sizeof(buf) - 1);
        if (sz > 0) {
            buf[sz] = 0;
            puts(buf);
        }
    }
}

int uebpf_load_file(const char *path)
{
    use_uebpf_call = true;
    return load_bpf_file(path);
}

int uebpf_run(int prog_id, void *ctx)
{
    return uebpf_rt_run(prog_id, ctx);
}

#ifdef ARCH_AARCH64
void uebpf_set_back_jump_check(int v)
{
    uebpf_rt_set_back_jump_check(v);
}
#endif