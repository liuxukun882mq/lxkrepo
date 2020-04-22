#!/bin/bash                 #nginx日志切割,配合crontab计划任务
date=`date +%Y%m%d`           #log splite
logpath=/usr/local/nginx/logs
mv $logpath/access.log $logpath/access-$date.log
mv $logpath/error.log $logpath/error-$date.log
kill -USR1 $(cat $logpath/nginx.pid)
