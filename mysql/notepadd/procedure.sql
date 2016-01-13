--查看存储过程
show procedure|function status;
show create procedure|function name

--基本的存储过程
delimiter //
create procedure avg_fruits_price()
begin
select avg(f_price) from fruits;
end
//
delimiter ;


--带变量的存储过程
delimiter //
create procedure avg_fruits_price()
begin
declare param1,param2 int [default 10];
--为变量赋值的两种方式,一种是直接=,另一种是into
--set param1 = 15,param2 = 30;
--select f_price into param1 from fruits where id = 1;
insert into fruits values (@param);
end //
delimiter ;



--mysql错误实例-------------------------------------------------------------------------------------
error 1148(42000)
sqlstate value=42000
mysql_error_code=1148

--定义条件,(错误)
declare condition_name condition for [mysql_error_code]|[sqlstate sqlstateValue];

--定义处理程序
declare handler_type handler for condition_value sq_statement;
handler_type:
	continue|exit|undo(mysql暂时不支持)
	
condition_value:
	sqlstate sqlstate_value  --mysql包含5个字符串的错误值 
	|condition_name --declare condition 定义的错误名称
	|sqlwarning		--匹配所有以01开头的sqlstate错误代码
	|not found		--匹配所有以02开头的sqlstate错误代码
	|sqlexception	--匹配所有没有被sqlwarning和sqlexception捕获的sqlstate错误代码
	|mysql_error_code --匹配数值类型的错误代码
sq_statement : 当遇到问题是需要执行的语句


--游标的使用cursor---------------------------------------------------------------------------------

--游标的声明
declare cursor_name cursor for select_statement(select语句的内容)
--打开游标
open cursor_name
--使用游标
fetch cursor_name into param,...;(所有的param必须在前面已经定义过了)
--关闭游标
close cursor_name


--流程控制------------------------------------------------------------------------------------------
--if
if expr_condition then statement_list
	[elseif expr_condition then statement_list]
	[else statment_list]
end if

--case
case case_expr--case_expr可以没有,这时,when后面的when_value必须是boolean类型的值,执行true的when
	when when_value then statement_list
	[when when_value then statement_list]
	[else statment_list]
end case

--loop loop只是创建一个循环,并不进行判断,若要跳出循环需要在statement_list之中进行炒作
[loop_label:]loop
	statement_list
end loop[loop_label]

--leave leave用来跳出任何被标注的流程控制系统.
leave label

--iterate  iterate语句将执行顺序转到语句开头处,只能用在loop iterate while
iterate label

--repeat  创建一个带有条件判断的循环过程
[repeat_label:]repeat
	statement_list
until expr_condition
end repeat [repeat_label]

--while
[while_label:]while expr_condition do
	statement_list
end while [while_label]