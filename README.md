# Build actions for RISC-V stuff


## Build [riscv-gnu-toolchain](https://github.com/riscv/riscv-gnu-toolchain)

It will build either cross-compiler with support:

* 32-bit and 64-bit 
* newlib and linux

The multilib compiler will have the prefix riscv64-unknown-elf- or riscv64-unknown-linux-gnu-, but will be able to target both 32-bit and 64-bit systems. It will support the most common -march/-mabi options, which can be seen by using the --print-multi-lib flag on either cross-compiler.


## Build QEMU, Linux and Busybox

It will fetch and build [qemu](https://www.qemu.org), [linux](https://www.kernel.org) and [busybox](https://www.busybox.net) for RISC-V.


## Other toolchains

* [bootlin riscv toolchain(2020.08-1)](https://toolchains.bootlin.com/downloads/releases/toolchains/riscv64/tarballs/riscv64--glibc--bleeding-edge-2020.08-1.tar.bz2)

Check other toolchain of bootlin [here](https://toolchains.bootlin.com).


## Build [buildroot](https://buildroot.org)

This task is building `qemu_riscv64_virt_defconfig` and get all components for booting riscv linux on qemu.

* `fw_jump.elf`
* Linux image
* rootfs.ext2
* SDK (build with `make sdk`)

## Specify package download link in `packages`

Example:

```
buildroot::https://buildroot.org/downloads/buildroot-2020.11.1.tar.gz
qemu::https://download.qemu.org/qemu-5.2.0.tar.xz
linux::https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.10.tar.xz
busybox::https://busybox.net/downloads/busybox-1.32.1.tar.bz2
bootlin-toolchain::https://toolchains.bootlin.com/downloads/releases/toolchains/riscv64/tarballs/riscv64--glibc--bleeding-edge-2020.08-1.tar.bz2
```

## Installation stuff

### qemu-linux-busybox

```bash
curl -fsSL https://raw.githubusercontent.com/wbrn/riscv-actions/master/install-gt.sh | sh
```

### riscv-gnu-toolchain

```bash
curl -fsSL https://raw.githubusercontent.com/wbrn/riscv-actions/master/install-qlb.sh | sh
```
