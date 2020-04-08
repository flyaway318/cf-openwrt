#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.9/192.168.1.2/g' package/base-files/files/bin/config_generate
git clone https://github.com/destan19/OpenAppFilter.git package/tz
./scripts/feeds update -a
./scripts/feeds install -a
