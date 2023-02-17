# λ-IO: A Unified IO Stack for Computational Storage

This is the open-source repository for our paper
 **λ-IO: A Unified IO Stack for Computational Storage** on [FAST'23](https://www.usenix.org/conference/fast23/presentation/yang-zhe).



## Cite our paper
```
@inproceedings {285746,
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
