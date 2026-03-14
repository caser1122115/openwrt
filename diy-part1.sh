#!/bin/bash

# 1. Add custom feeds
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

# 2. Add Kenzo/small feeds but solve conflicts
# We only add kenzo for non-conflicting apps
echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default

# 3. Force remove problematic duplicate packages from the feeds
# This prevents the "v2ray/xray" duplicate error
sed -i 's/^src-git helloworld/#src-git helloworld/' feeds.conf.default

# 4. Optional: If the error persists, we can also disable the 'small' feed if you don't need its specific tweaks
# sed -i 's/^src-git small/#src-git small/' feeds.conf.default
