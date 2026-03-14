#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
#
echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default
# 
# sed -i 's/^src-git helloworld/#src-git helloworld/' feeds.conf.default
