!/bin/sh
#自定义clone一个仓库示例脚本
 function initCustRepo() {
     git clone https://github.com/i-chenzhe/qx.git /custRepo
 }

  if [ ! -d "/custRepo/" ]; then
     echo "未检查到custRepo仓库脚本，初始化下载相关脚本"
     initShylocks
 else
     echo "更新custRepo脚本相关文件"
     git -C /custRepo reset --hard
     git -C /custRepo pull --rebase
 fi
#自定义增加crontab任务示例
#临时增加红包雨
echo "23 19 * * *  node /scripts/jd_fanslove.js >> /scripts/logs/jd_fanslove.log 2>&1" >> /scripts/docker/merged_list_file.sh
 
