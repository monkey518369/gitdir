mysql日志分为四种,通过四种日志可以知道mysql内部分省的事情.
	1.错误日志:记录mysql启动,运行,停止时出现的问题.
	2.查询日志.记录建立的客户端连接和执行的语句.
	3.二进制日志.具有所有更改数据的语句.可以用于数据复制.
	4.慢查询日志.记录所有执行时间超过 long_query_time的所有查询或不适用索引		  的查询

运行flush logs | mysqladmin flush-logs | mysqladmin refresh 可以刷新日志

二进制日志(默认关闭).
	在my.ini中设置二进制日志(在mysqld组下面添加).
	
	log-bin [=path/[filename]]
	expire_logs_days=10
	max_binlog_size = 100M

	log-bin定义开始二进制日志

查看二进制文件.
	show binary logs 语句可以查看当前的二进制日志文件个数及其文件名.
	mysqlbinlog finename查看mysql二进制文件

删除二进制日志
	1.reset master .直接删除所有的二进制日志.
	2.purge {master | binary} logs to 'log_name'
		将删除文件名标号比制定文件名标号小的所有日志文件
	3.purge {master|binary} logs before 'date'
		将删除制定日期一眼的所有日志文件
使用二进制日志还原数据库(mysql可以恢复从一个时间点到另一个时间点的数据)
	1.mysqlbinlog [option] filename | mysql -uuser -ppwd
		option 参数 --start-date --end-date
			    --start-position --stop-position
	mysqlbinlog --stop-date='date' fileneme | mysql --uuser --ppass
暂停二进制日志功能.
	1.set sql_log_bin={0|1};
