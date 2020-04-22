#!/bin/bash    #monitor file
while   inotifywait -rqq /dir/        #/dir/为被监控目录
 do
   rsync -a --delete  /dir/  root@192.168.4.207:/opt/  
 done
