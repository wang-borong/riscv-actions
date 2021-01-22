# Build actions for RISC-V

## Build [riscv-gnu-toolchain](https://github.com/riscv/riscv-gnu-toolchain)

It will build either cross-compiler with support:

* 32-bit and 64-bit 
* newlib and linux

The multilib compiler will have the prefix riscv64-unknown-elf- or riscv64-unknown-linux-gnu-, but will be able to target both 32-bit and 64-bit systems. It will support the most common -march/-mabi options, which can be seen by using the --print-multi-lib flag on either cross-compiler.

## Build QEMU, Linux and Busybox

It will fetch and build [qemu](https://www.qemu.org), [linux](https://www.kernel.org) and [busybox](https://www.busybox.net) to risc-v arch.
