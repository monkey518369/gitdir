delimiter //
create procedure add_id()
begin
declare itemp int;
declare cur_id cursor for select id from sch;
declare exit handler for not found close cur_id;
select count_sch() into @count_all;
set @sum_id=0;
set @num = 0;
set @id = 1000;
open cur_id;
repeat
fetch cur_id into itemp;
set @num = @num + 1;
set @id = itemp;
if itemp<10
then set @sum_id = @sum_id + itemp;
end if;
until 0 
end repeat;
close cur_id;
end //

delimiter ;