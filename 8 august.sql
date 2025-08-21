--constraints
select * from Employee
--Constraints 
use microsoft 
select * from employee insert into employee (name, age, gender, salary, department) values ('Nishant', 30, 'Male', 54000, 'Accounts') 
 
--Not Null 
alter table employee alter column id int not null 
update employee set id = 16 where name = 'Nishant' 
alter table employee alter column id int not null 
sp_help 'employee'

select * from employee insert into employee (name, age, gender, salary, department) 
values 
('Sandeep', 30, 'Male', 554000, 'Accounts')

alter table employee alter column id  int null

update employee set id = 17 where name= 'sandeep'

insert into Employee values (17,'Shweta',7,'Female',87000,'IT','Chennai','India')

select * from employee

alter table employee add constraint chk_age Check( age between 22 and 60)

update employee set age = 47 where name = 'Shweta'

alter table employee add constraint chk_age Check( age between 22 and 60)

insert into employee values (19,'Ramesh',20,'Male',45000,'HR','Thane','India')

insert into employee values (19,'Ramesh',26,'Male',45000,'HR','Thane','India')

update Employee set id = 18 where name = 'Sandeep'

select * from employee order by id

select distinct department from employee

alter table employee  add constraint c_dep Check (department in ('HR','IT','Accounts','Marketing','Security'))

insert into employee values (20