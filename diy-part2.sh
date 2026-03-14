#!/bin/bash

# 1. Force Kernel 6.12
sed -i 's/KERNEL_PATCHVER:=.*/KERNEL_PATCHVER:=6.12/g' target/linux/mediatek/Makefile

# 2. Set Default IP and Hostname
sed -i 's/192.168.1.1/192.168.1.1/g' package/base-files/files/bin/config_generate
sed -i 's/OpenWrt/ImmortalWrt-RAX3000M/g' package/base-files/files/bin/config_generate

# 3. Optimization for MT7981 (RAX3000M Chip)
# High speed network processing and Wi-Fi drivers fix
find target/linux/mediatek/patches-6.12 -name "*mac80211*" -exec rm -rf {} \; 2>/dev/null
