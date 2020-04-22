#!/bin/bash          # any password
a=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789
#八位数的随机密码
for i in {1..8}
do
x=$[RANDOM%62]
pass=${a:x:1}
pass2="$pass2$pass"
done
echo "$pass2"
