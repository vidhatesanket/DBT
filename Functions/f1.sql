drop function if exists sumSalary;
delimiter $
create function sumSalary(_deptno int) returns int
DETERMINISTIC
begin
	declare sum1 int;
    declare count1 int;
    declare temp int;
    select count(*) into count1 from emp where deptno=_deptno group by deptno;
    set sum1 := 0;
    loop1:loop
    set count1 := count1 - 1;
		if count1 >= 0 then
		
			select sal into temp from emp where deptno=_deptno limit count1,1;
			
            set sum1 := sum1 + temp;
		else 
			leave loop1;
		end if;
    end loop loop1;
    return sum1;
end $
delimiter ;
