


drop trigger if exists tr1;
delimiter $
create trigger tr1 before insert on d2 for each ROW
begin
	insert into d values(new.deptno,new.dname,new.loc);
	
	
end $
delimiter ;
insert into d2 values(345,'pratik','pune');
insert into d2 values(3456,'sanket','pune');





