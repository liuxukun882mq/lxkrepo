#!/bin/bash
#检测ssh登录日志，如果远程登陆密码错误3次，则发送邮件告诉管理员
x=`awk '/Failed/{ip[$11]++}END{for(i in ip){print i","ip[i]}}' /var/log/secure`
for i in $x
do
	p=${i%.*}        #password over 3times
	s=${i#*.}
	[ $s -eq 3 ] && "报警! $p访问本机失败了$s次" | mail -s test root
done
