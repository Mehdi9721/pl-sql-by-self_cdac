# for creating a cursor
cursor can store multiple rows in one variable which is cursor similar work as array <br>,
for cursor we have to store data somewere like a copy which is insensitive<br>


delimiter $
create procedure p1() <br>
begin <br>
declare _name varchar(30); <br>
declare _sal int(10); for making copy of sal data which we will get from cursor <br>
declare x cursor for select * from table; //cursor declared for table in x <br>
open x; // <br>
 //for fetching data <br>
 fetch x into _name,_sal; <br>
 select _name,_sal // for printing value <br>
close x; <br>
end; <br>

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
# creating procedure 
drop procedure is exists p1; //it will drop procedure if alerdy exist <br> 

## procedure is just simliar to function call or function declartion with argument passing or non arrgument passing,it can do same activity like select update delete when it is sourced and called into a sql databases; <br>

delimiter $ <br>
create procedure p1() <br>
begin <br>
select * from table t1;
end; <br>
delimiter ; //fixing delimiter again to original <br>
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
# NEW and OLD in plsql
## NEW
it takes current values from the arguments of a procedure and store in itself,NEW and OLD is used by the databases to store values into table and to fetch data from table. <br>
whenever we insert a new data into table an old value is replaced by new which is passed through argument <br>

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 # trigger
 trigger basically works on NEW and OLD values concept,
 ### trigger is similar to onclic function of js;
 ## syntax
 create trigger tr1 (before || after) insert||update on tabel_name for each row  <br>
 tr1 is trigger name <br>
 before is used to notify trigger wether it will work before or after performing any activity into table <br>
 for each row =will work trigger for each row <br>
 
