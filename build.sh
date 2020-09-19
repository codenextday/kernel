#!/bin/sh
if [ "$1" = "qserver" ]; then
make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- qserver_defconfig
elif [ "$1" = "kernel" ]; then
make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- -j2
elif [ "$1" = "distclean" ]; then
make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- distclean
elif [ "$1" = "menuconfig" ]; then
make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- menuconfig
elif [ "$1" = "savedefconfig" ]; then
make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- savedefconfig
cp defconfig arch/arm64/configs/qserver_defconfig
fi
