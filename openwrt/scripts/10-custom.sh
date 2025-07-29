#!/bin/bash

# 自定义脚本

# 拉取新插件
# Syncthing 存储同步工具
git clone https://github.com/turingtrail/luci-app-syncthing package/new/luci-app-syncthing
# EasyTier
git clone https://github.com/EasyTier/luci-app-easytier package/new/luci-app-easytier


# 更新软件版本
# 使用 sha256sum 校验HASH

# ZeroTier
# 定义软件文件路径
ZEROTIER_MAKEFILE_PATH="./feeds/packages/net/zerotier/Makefile"
# 定义软件版本信息
ZEROTIER_PKG_VERSION="1.14.2"
ZEROTIER_PKG_HASH="c2f64339fccf5148a7af089b896678d655fbfccac52ddce7714314a59d7bddbb"
# 使用 sed 命令替换文件中的值
sed -i "s/^PKG_VERSION:=.*/PKG_VERSION:=${ZEROTIER_PKG_VERSION}/" $ZEROTIER_MAKEFILE_PATH
sed -i "s/^PKG_HASH:=.*/PKG_HASH:=${ZEROTIER_PKG_HASH}/" $ZEROTIER_MAKEFILE_PATH