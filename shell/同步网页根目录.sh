#!/bin/bash     #同步网页根目录
FROM_DIR="/var/www/html/"      
RSYNC_CMD="rsync -az --delete $FROM_DIR root@192.168.4.207:/var/www/html" 
while inotifywait -rqq -e modify,move,create,delete,attrib  $FROM_DIR 
do
    $RSYNC_CMD
done  &
