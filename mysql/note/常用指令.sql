<!--�鿴��ṹ-->
describe tableName;
desc tableName;
show columns from tableName;
<!--�鿴�������-->
show create table tableName;
<!--�鿴������ϸ�ṹ-->
select * from information_schema.columns where table_schema='dbName' and 'table_name=tableName'; 
<!-- �鿴���е����ݿ� -->
<!-- ���е����ݿ�-->
show databases
<!-- ���еķ�ϵͳ���ݿ�-->
select schema_name from information_schema.schema where schema_name not in 
('mysql','information_schema','test','search','tbsearch','sbtest','dev_ddl');
<!-- �鿴ĳ�����ݿ��е����б�-->
select * from information_schema.tables where table_schema = 'dbname' and table_name not like 'tem#_%' escape '#';
<!-- �鿴ĳ�����е������ֶ�-->
select * from information_schema.tables where table_schema='dbname' and table_name = 'tableName';
<!-- �鿴ĳһ���������-->
show index from tableName;
show keys from tableName;
<!-- �鿴ĳ���ݿ���ĳ���ע�� -->
select table_comment from information_schema.tables where table_schema='dbName' and table_name='tableName';
<!-- �鿴��ĳ���µ������е�ע��-->
select column_name , column_comment from information_schema.columns where table_name = 'tableNmae';
