#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
sed -i 's/KERNEL_PATCHVER:=.*/KERNEL_PATCHVER:=6.12/g' target/linux/mediatek/Makefile
#
sed -i 's/192.168.1.1/192.168.1.1/g' package/base-files/files/bin/config_generate
#
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
#
sed -i 's/OpenWrt/RAX3000M-6.12/g' package/base-files/files/bin/config_generate
#
find target/linux/mediatek/patches-6.12 -name "*mac80211*" -exec rm -rf {} \; 2>/dev/null
