drop trigger if exists tri;
delimiter $
create trigger tri before insert on t1 for each row
begin 
declare x int;
select min(sal) into x from t1;
set new.sal =x;  
end $
delimiter ;