#!/bin/bash
echo "\n移除旧文件 gfwlist.txt"
rm -rf gfwlist.txt
echo "\n开始加密 rule-list.txt..."
base64 -b 64 -i rule-list.txt -o gfwlist.txt
echo "\nrule-list.txt 加密完成，加密文件保存为 gfwlist.txt\n"
git add .
git commit -m "update from script"
git push origin master