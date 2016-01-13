delimiter //
create procedure handlerdemo()
begin
declare continue handler for sqlstate '23000' set @info='哥们主键重复了';
set @x = 1;
insert into test values(1);
set @x = 2;
insert into test values(1);
set @x = 3;
end; //
delimiter ; 