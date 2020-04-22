#!/bin/bash   #monitor system
uptime | awk '{print "CPU平均负载" $8,$9,$10}'  #CPU平均负载1.5.15
ifconfig eth0 | awk '/RX packets/{print "接收流量"$5}'  #网卡接收流量
ifconfig eth0 | awk '/TX packets/{print "发送流量"$5}'  #网卡发送流量
free -m | awk 'NR==2{print "内存剩余流量"$4}'   #内存剩余流量
df -h | awk 'NR==2{print "磁盘剩余"$4}'   #磁盘剩余空间
wc -l /etc/passwd | awk '{print "系统账户"$1"个"}'  #计算机账户数量
who | wc -l | awk '{print "当前登录账户"$1"个"}'  #当前登录账户数量
ps aux | wc -l | awk '{print "目前启用进程"$1"个"}'  #计算机当前开启的进程数量
rpm -qa | wc -l | awk '{print"当前已安装软件包"$1"个" }' #当前已安装软件包数量
