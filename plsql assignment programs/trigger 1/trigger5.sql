
drop trigger if exists trigger5;
delimiter $
create trigger trigger5 before insert on student for each row
BEGIN
	declare result varchar(30);
	if dayname(now()='Saturday') then
		signal sqlstate '45000'
		set message_text="Today is Sunday, Data will not be inserted!";
	end if;
end $
delimiter ;



