--IIF()
use microsoft

select * ,iif(age <40,'software','Management') as Designation from employee
--iif(condition,true 1 condition is true,else if condition is not true)

select *,iif(salary<60000,'10% Tax','30% Tax') as Tax from employee

select *,iif(age<25,'intern',iif(age<28,'Software Engineer',iif(age<30,'Senior Software Engineer',
iif(age<45,'Tech Lead',iif(age<47,'Team Lead',iif(age<49,'Manager',
'President')))))) as designation into emp_d from employee

select * from emp_d

select *,iif(gender='male',concat('Mr.',name),concat('Miss.',name)) as Title 
from Employee order by gender

--View
create view vi_male
as 
select * from employee where gender = 'male'
insert into vi_male values (30,'Prashant',45,'Male',78000,'HR','Ambala','India')

select * from vi_male
select * from employee

delete from employee where name = 'Joseph'

select * from employee

insert into vi_male values (31, 'Neeti', 40, 'Female', 45000, 'Marketing', 
'Chennai', 'India')

select * from vi_male
