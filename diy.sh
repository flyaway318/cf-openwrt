#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
git clone https://github.com/destan19/OpenAppFilter.git package/tz
./scripts/feeds update -a
./scripts/feeds install -a
# Modify default IP
sed -i 's/192.168.1.1/192.168.1.5/g' package/base-files/files/bin/config_generate
