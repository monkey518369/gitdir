<!--创建数据库-->
create database dbname;
<!-- 删除数据库 -->
drop database dbname;
<!--建表语句-->

create table user(
	id int not null auto_increment primary key,
	name varchar(20),
	age int,
	createTime data
);


create table dataType(
	id int not null auto_increment primary key,
	dataType enum('数字','字符','时间'),
	createTime data,
	createBy varchar(15),
	foreign key(createBy) references user(id) ond delete cascade
) default charset=utf-8;

<!-- 修改表 -->
<!-- 增加一列 -->
alter table  tableName add columnName dataType;
<!-- 修改列 --> 
alter table tableName change oldColumnName newColumnName dataType;
<!-- 删除列 -->
alter table tableName drop columnName;
<!-- 重命名表 -->
alter table tableName rename newTableName;
<!-- 删除表表中主键 -->
alter table tableName drop primary key;

