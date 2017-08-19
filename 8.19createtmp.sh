#! /bin/bash
#createtmp.sh
cat<<a
	1,获取到所有的httpd应用进程的进程号
	2.把进程号存入一个临时文件中
	3.从临时文件读取所有的appache2的进程号
	4.使用for循环用kill杀掉所有的httpd进程
	5.删除之前生成的临时文件
	5.输出关闭进程候的消息
a
tmpfile=$$.txt
ps -e | grep apache 
if [ ! $? -eq 0 ]
then
	echo $?
	echo "apache2 is close, start apache2..."
	systemctl start apache2
#	pkill apache2
fi
	ps -e | grep apache | awk '{ print $1 }' >> $tmpfile
while read line
do
	kill $line
done < $tmpfile
rm -rf $tmpfile
echo "delete $tmfile ok"
ps -e | grep apache 
if [ $? -eq 0 ]
then
	echo "apache2 kill!!!"
fi
