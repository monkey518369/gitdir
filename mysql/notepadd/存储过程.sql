--简单的带有输出参数的存储过程
delimiter //
create procedure first(out s int)
begin
select count(*) into s from user;
select s;
end
//
delimiter ;
--带有循环的procedure
delimiter //
create procedure doWhile()
begin
declare var int default 0;
set var = 20;
while var >0 do
insert into uu values(var,concat('lishis',var));
set var = var -1;
end while;
end;
//
delimiter ;