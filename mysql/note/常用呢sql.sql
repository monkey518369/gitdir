<!--�������ݿ�-->
create database dbname;
<!-- ɾ�����ݿ� -->
drop database dbname;
<!--�������-->

create table user(
	id int not null auto_increment primary key,
	name varchar(20),
	age int,
	createTime data
);


create table dataType(
	id int not null auto_increment primary key,
	dataType enum('����','�ַ�','ʱ��'),
	createTime data,
	createBy varchar(15),
	foreign key(createBy) references user(id) ond delete cascade
) default charset=utf-8;

<!-- �޸ı� -->
<!-- ����һ�� -->
alter table  tableName add columnName dataType;
<!-- �޸��� --> 
alter table tableName change oldColumnName newColumnName dataType;
<!-- ɾ���� -->
alter table tableName drop columnName;
<!-- �������� -->
alter table tableName rename newTableName;
<!-- ɾ����������� -->
alter table tableName drop primary key;

