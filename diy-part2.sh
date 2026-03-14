#!/bin/bash

# 1. Force Kernel 6.12 for Filogic 820 (MT7981)
sed -i 's/KERNEL_PATCHVER:=.*/KERNEL_PATCHVER:=6.12/g' target/linux/mediatek/Makefile

# 2. Set Default IP to 192.168.16.1
sed -i 's/192.168.1.1/192.168.16.1/g' package/base-files/files/bin/config_generate

# 3. Set Hostname to ImmortalWrt-RAX3000M
sed -i 's/OpenWrt/ImmortalWrt-RAX3000M/g' package/base-files/files/bin/config_generate

# 4. Remove mac80211 patches to avoid compilation errors on 6.12
find target/linux/mediatek/patches-6.12 -name "*mac80211*" -exec rm -rf {} \; 2>/dev/null
