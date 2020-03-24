#!/bin/bash
SCRIPT_PATH="`dirname $0`/"
echo "\n移除旧文件 origin-gfwlist.txt"
rm -rf ${SCRIPT_PATH}origin-gfwlist.txt
echo "\n正在下载官方 gfwlist ..."
wget -O ${SCRIPT_PATH}origin-gfwlist.txt https://raw.githubusercontent.com/gfwlist/gfwlist/master/gfwlist.txt
echo "\n下载官方 gfwlist 结束，保存为 origin-gfwlist.txt"
echo "\n移除旧文件 origin-rule-list.txt"
rm -rf ${SCRIPT_PATH}origin-rule-list.txt
echo "\n开始解密官方 gfwlist ..."
base64 -D ${SCRIPT_PATH}origin-gfwlist.txt -o ${SCRIPT_PATH}origin-rule-list.txt
echo "\n官方 gfwlist 解密完成，解密文件保存为 origin-rule-list.txt\n"