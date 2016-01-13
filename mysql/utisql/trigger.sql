delimiter //
create trigger first_trigger before insert on test1
	for each row begin
		insert into test2 set a2 = new.a1;
