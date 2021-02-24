##下面只是做一个示例
##使用自定义shell下载并配置执行农场		 ##使用自定义shell下载并配置执行农场
wget -O /scripts/jd_fanslove.js https://raw.githubusercontent.com/i-chenzhe/qx/main/jd_fanslove.js		 # wget -O /scripts/jx_nc.js https://raw.githubusercontent.com/whyour/hundun/master/quanx/jx_nc.js
echo -e >> /scripts/docker/merged_list_file.sh		 # echo -e >> /scripts/docker/merged_list_file.sh
echo "10 9,18 * * * node /scripts/jd_fanslove.js |ts >> /scripts/logs/jd_fanslove.log 2>&1" >> /scripts/docker/merged_list_file.sh		 # echo "10 9,18 * * * node /scripts/jx_nc.js |ts >> /scripts/logs/jx_nc.log 2>&1" >> /scripts/docker/merged_list_file.sh
 
