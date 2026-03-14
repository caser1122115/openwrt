#!/bin/bash

# 1. 修改默认 IP 为 192.168.1.1 (或者你喜欢的 IP)
sed -i 's/192.168.1.1/192.168.1.1/g' package/base-files/files/bin/config_generate

# 2. 修改主机名为 ImmortalWrt-RAX3000M
sed -i 's/OpenWrt/ImmortalWrt-RAX3000M/g' package/base-files/files/bin/config_generate

# 3. 强制使用 6.12 内核 (针对联发科设备)
sed -i 's/KERNEL_PATCHVER:=.*/KERNEL_PATCHVER:=6.12/g' target/linux/mediatek/Makefile

# 4. 移除无线驱动冲突 (解决之前你遇到的编译错误)
find target/linux/mediatek/patches-6.12 -name "*mac80211*" -exec rm -rf {} \; 2>/dev/null
