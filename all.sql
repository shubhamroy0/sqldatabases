create database employee
go
use employee
go
create table employee_details
(
	id int primary key identity,
	name varchar(100),
	designation varchar(5),
	salary int,
	doj date
)
go
select * from employee_details
go
create proc USP_ViewData
as
begin
	select * from employee_details
end
go
create proc USP_InsertEmployee
@Name varchar(100),
@desg varchar(5),
@salary int,
@doj date
as
begin
insert into employee_details values
(
	@name,@desg,@salary,@doj
)
end
go
exec USP_ViewData