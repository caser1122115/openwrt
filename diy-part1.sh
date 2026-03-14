#!/bin/bash
#
# File name: diy-part1.sh
#

echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default

sed -i 's/^src-git helloworld/#src-git helloworld/' feeds.conf.default
