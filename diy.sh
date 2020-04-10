#!/bin/bash
#=================================================
# Description: DIY script for P3
# Lisence: no
# Author: creform
# Blog: no
#=================================================
git clone https://github.com/destan19/OpenAppFilter.git package/destan19
git clone https://github.com/Lienol/openwrt-package package/lienol
git clone https://github.com/vernesong/OpenClash.git package/vernesong
git clone https://github.com/pymumu/smartdns.git package/pymumu
./scripts/feeds update -a
./scripts/feeds install -a
# Modify default IP
sed -i 's/192.168.1.1/192.168.1.9/g' package/base-files/files/bin/config_generate
