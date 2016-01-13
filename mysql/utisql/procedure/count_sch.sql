delimiter //
create function count_sch()
returns int
return (select count(*) from sch);
//
delimiter ;