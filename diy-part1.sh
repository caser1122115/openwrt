#!/bin/bash

# 仅保留 PassWall 官方源，它与 ImmortalWrt 兼容性最好
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

# 如果你需要更多插件，可以加 kenzo，但绝对不要再加 small 或者 helloworld
echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
