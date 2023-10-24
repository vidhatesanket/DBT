drop trigger if EXISTS validateId;
delimiter $
create trigger validateId before insert on patient_prescription for each ROW
BEGIN
	declare ifId bool;
	select distinct true into ifId from patient_registration where pid != new.pid;
	if ifId THEN
		signal sqlstate '45000'
		set message_text = "Person is not a registered  patient";
	end if;
end $
delimiter ;
