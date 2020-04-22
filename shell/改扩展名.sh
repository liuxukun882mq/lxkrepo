#!/bin/bash   #change name
for i in `ls *.txt` 
do                               #.txt改.doc
	x=${i%.*}		#去掉扩展名,得到纯文件名
	mv $i  $x.doc	 #将原本的文件修改成纯文件名.doc
done
