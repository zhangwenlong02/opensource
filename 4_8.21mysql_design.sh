常用数据类型
数值类型
tinyint -127<=数值<=127
int 有符号
int unsigned 无符号
bigint 有符号

字符串类型
char(255) 长度≤255
varchar(255) 长度≤255
text  255＜长度≤65535

char和varchar区别
1.char最长255，varchar最长65535
2.char固定长度空间，carchar可变空间

数据字段类型
1.unsigned
2.zerofiill  0填充（默认设置成无符号）
3.auto_increment primary key(自动增加,需添加主键索引'primary key')
4.null
5.not null
6.default
主键自增的两种方式：
te table t4( 
	id int unsigned auto_increment primary key, 
	name varchar(10)
	);
 create table t5( 
	id int unsigned auto_increment,
	name varchar(20),
	primary key(id)
	);
null和默认值没有任何关系
