#!/bin/sh
#i-chenzhe仓库脚本 根据iouakira 脚本复制而来
function initShylocks() {
 git clone https://github.com/i-chenzhe/qx.git /i-chenzhe
  npm install
  }
if [ ! -d "/i-chenzhe/" ]; then
echo "未检查到i-chenzhe仓库脚本，初始化下载相关脚本"
 initShylocks
 else
  echo "更新i-chenzhe脚本相关文件"
git -C /i-chenzhe reset --hard
git -C /i-chenzhe pull --rebase
npm install
fi
##复制两个文件
cp -f /i-chenzhe/jd*.js /scripts/
##使用自定义shell下载并配置执行美妆
echo "10 8,9,10 * * * node /scripts/jd_entertainment.js |ts >> /scripts/logs/jd_entertainment.log 2>&1" >> /scripts/docker/merged_list_file.sh
