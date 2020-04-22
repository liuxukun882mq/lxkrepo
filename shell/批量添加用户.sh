#!/bin/bash     #add user
if  [ $# -eq 0 ];then
 echo 'Usage: /root/batchusers'  >&2
 exit 3
elif [  -f  $1  ];then
 for a in $(cat $1)              #位置变量输入文件路径
 do
  useradd -s  /bin/false $a   &> /dev/null
  echo $a用户创建成功
 done
else
  echo Input file not found   >&2
  exit 4
fi
