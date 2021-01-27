#!/usr/bin/env bash


# If the toolchain has builded today
wget https://github.com/wbrn/riscv-gnu-toolchain/releases/download/$(date +"%Y.%m.%d")/qemu-linux-busybox.tar.xz
# download last day builded toolchain
[[ $? != 0 ]] && wget https://github.com/wbrn/riscv-gnu-toolchain/releases/download/$(date +"%Y.%m").$(($(date +%d)-1))/qemu-linux-busybox.tar.xz
[[ $? != 0 ]] && quit 1

tar xf qemu-linux-busybox.tar.xz -C ~
cd ~/qemu-linux-busybox
sudo mv qemu-*/opt/qemu /opt && chown -R 0:0 /opt/qemu
rm -rf qemu-*

echo "Add '/opt/qemu/bin' to your PATH and launch the riscv linux image with qemu"
