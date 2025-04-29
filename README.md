# λ-IO: A Unified IO Stack for Computational Storage

This is the open-source repository for our paper
 **λ-IO: A Unified IO Stack for Computational Storage** on [FAST'23](https://www.usenix.org/conference/fast23/presentation/yang-zhe).



## Cite our paper
```bib
@inproceedings {fast23-lambda-io,
author = {Zhe Yang and Youyou Lu and Xiaojian Liao and Youmin Chen and Junru Li and Siyu He and Jiwu Shu},
title = {{λ-IO}: A Unified {IO} Stack for Computational Storage},
booktitle = {21st USENIX Conference on File and Storage Technologies (FAST 23)},
year = {2023},
isbn = {978-1-939133-32-8},
address = {Santa Clara, CA},
pages = {347--362},
url = {https://www.usenix.org/conference/fast23/presentation/yang-zhe},
publisher = {USENIX Association},
month = feb,
}
```

# Components
λ-IO includes a large number of components.
- Host userspace: Spark SQL, HDFS, libbpf, ...
- Host kernel: VFS, eBPF verifier & JITer, ...
- Device: FPGA block design, firmware (NVMe + λ extension), ...

We are constructing the repository step by step to present it in a better way.
We plan to open source some propotype code in the future.
Please focus on the repository for updates.

Here is a brief introduction to uploaded components.
- `device-hardware` (device). PL(FPGA) and PS(ARM) code and binary files for Daisy/DaisyPlus OpenSSD.
- `ebpf` (host/device): eBPF/sBPF computational functions.
- **`host-eval`** (host): Evaluation code. It shows how to use λ-IO in an application, including the programming model and APIs.
- `kmod` (host): the kernel module of λ-IO dispatcher and helper syscalls.
- `libbpf` (host/device): The library to load an eBPF/sBPF program.
- `linux-lio` (host): Modified files in the Linux source code tree. We tried to implement components as a kernel module (`kmod`), but some still need to be implemented in the Linux source tree code and compiled into the kernel image.
- `nvme-ctl` (device): The firmware of the NVMe controller on the ARM CPUs. Before running the controller, you need to configure the PL(FPGA) and the Linux on PS(ARM) using `device-hardware`.
- `uebpf-rt` (device): Userspace eBPF/sBPF runtime for x86-64 and aarch64 (ARM). λ-IO only uses `uebpf-rt` on the device. We also port the runtime to the x86-64 userspace, for the research purpose.

# Building and Running
The repository serves as more a reference for experts, rather than an out-of-the-box codebase for beginners.
It is not straightforward to build and run the code directly, because the code is for specific software and hardware environment.

For example, the NVMe controller (nvme-ctl) is the userspace code for PetaLinux on Daisy/DaisyPlus OpenSSD.
To run the code, one must configure the PetaLinux along with an FPGA image on Daisy/DaisyPlus OpenSSD.

If you have further questions and interests, please feel free to propose an issue or contact me via email yangzhe.ac AT outlook.com) for detailed steps.
You can find my github at [yzim](https://github.com/yzim/).

## λ-IO Kernel
Running λ-IO kernel does not need a specific hardware platform.
You can do it in the following steps.

1. Compile the kernel source code and boot with the kernel. 
Download the Linux source code and modify it using `linux-lio`.
`linux-lio` is based on Ubuntu 20.04 LTS, Linux 5.10.21 (official apt package by Ubuntu).
We recommend you to try the same OS and kernel.
If your OS and kernel differ from our settings, it needs extra efforts to fix the compatibility.
2. Compile the kernel module `lio-helper` in `kmod` and insmod it. 
To run λ-IO in the kernel mode only, you can delete all the code of functions `do_write_auto`, `do_write_dev`, `do_read_auto`, `do_auto`, and `do_dev` in `proc.c`, along with the variables.
3. Compile `libbpf` to a library.
4. Write and compile your computational logic with files in `ebpf/src/kern` as examples.
Therefore, you can get an eBPF program `*.o` to load.
5. Write and compile your application with files in `host-eval/src/eval-one.cc` as an example.
You can search the code for the mentioned functions below.
    1) load the eBPF program using `kebpf_load_file(...)`.
    2) open the `lio-helper` by `lioh_fd = open("/proc/lio-helper")`.
    3) set the loaded eBPF program using `ioctl(lioh_fd, LIOH_IOCTL_SET_KBPF, ...)`.
    4) set the scheduling mode to kernel-only using `ioctl(lioh_fd, LIOH_IOCTL_SET_SCHED, K)`.
    5) set the backend file using `set_back_file(lioh_fd, ...)`.
    6) trigger λ-read/λ-write using `pread(lioh_fd, ...)` or `pwrite(lioh_fd, ...)`.

We provide the compiling `Makefile` or `CMakeLists.txt` in `kmod`, `libbpf`, `ebpf`, and `host-eval`.
We also provide a root `CMakelists.txt` in the root directory.
I recommend you to use the root `CMakelists.txt` because it compiles all the components and fixes issues such as linking the compiled library.
To compile them for the host, set option `ONHOST` to `ON` in all the `CMakeLists.txt` files (`OFF` to cross-compile for the device-side ARM).

## NVMe Controller
If what you need is just an NVMe controller without λ-IO components, you can try `device-hardware` and `nvme-ctl`.
We provide a usable NVMe controller, which is ported and refactored from [OpenExpress](https://openexpress.camelab.org/) for Daisy/DaisyPlus OpenSSD.
It is much more efficient than the [official one](https://github.com/CRZ-Technology/OpenSSD-OpenChannelSSD) according to our experiments.
