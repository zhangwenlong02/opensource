#! /bin/bash
#shell_mysql.sh
cat<<a
	1.数据可基本操作
	2.shell操作mysql之增删查改
	3.apache2日志分割
	4.日志分割之任务计划
	5.apache日志统计之myaql数据库
a
mysql="/usr/local/mysql/bin/mysql -uroot -p123"
sql="creat table zwl.user(
	in intl unsignen auto_increment rpimary key,
	username varchar(50)
	password varchare(50)
)"
#now="show tables from test"
$mysql -e "$sql"
