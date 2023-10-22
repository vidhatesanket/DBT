
drop trigger if exists trigger5;
delimiter $
create trigger trigger5 before insert on student for each row
BEGIN
	declare result varchar(30);
	if dayname(now()='Sunday') then
		select "Today is Sunday, Data will not be inserted!" into result;
	end if;
end $
delimiter ;



