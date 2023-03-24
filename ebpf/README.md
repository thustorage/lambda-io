# eBPF/sBPF code

This directory generates eBPF/sBPF source code to eBPF/sBPF programs (.o files), so that you can load it by `libbpf`.

- `kern`: eBPF/sBPF computational functions.
- `user`: userspace code to test and debug the generated eBPF/sBPF programs. It is not necessary for using λ-IO.
