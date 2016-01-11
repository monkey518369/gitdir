<!--查看表结构-->
describe tableName;
desc tableName;
show columns from tableName;
<!--查看建表语句-->
show create table tableName;
<!--查看表想详细结构-->
select * from information_schema.columns where table_schema='dbName' and 'table_name=tableName'; 
<!-- 查看所有的数据库 -->
<!-- 所有的数据库-->
show databases
<!-- 所有的非系统数据库-->
select schema_name from information_schema.schema where schema_name not in 
('mysql','information_schema','test','search','tbsearch','sbtest','dev_ddl');
<!-- 查看某个数据库中的所有表-->
select * from information_schema.tables where table_schema = 'dbname' and table_name not like 'tem#_%' escape '#';
<!-- 查看某个表中的所有字段-->
select * from information_schema.tables where table_schema='dbname' and table_name = 'tableName';
<!-- 查看某一个表的索引-->
show index from tableName;
show keys from tableName;
<!-- 查看某数据库下某表的注释 -->
select table_comment from information_schema.tables where table_schema='dbName' and table_name='tableName';
<!-- 查看那某表下的所有列的注释-->
select column_name , column_comment from information_schema.columns where table_name = 'tableNmae';
