
drop trigger if exists update_studentDetails;
delimiter $
create trigger trigger5 before insert on student for each row
BEGIN
	
	insert into student_log values(old.ID,old.namefirst,old.namelast,old.DOB,old.emailID);
end $
delimiter ;



