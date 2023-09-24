drop procedure if exists p1;
delimiter $
create procedure p1()
begin

declare _name varchar(20);
declare _sal int(20);
declare x cursor for select * from t1;
open x ;
l:loop

fetch x into _name,_sal;
select _name,_sal;
end loop l;
close x ;
end $ 
delimiter ;