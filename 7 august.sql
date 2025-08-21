--Order by clause
use microsoft

select * from employee

select * from employee order by name

select * from employee order by name desc

select * from employee order by age

select * from employee order by age desc

select * from employee order by department

select * from employee order by department desc

select * from employee order by department , name

select * from employee order by department , name desc

select * from employee order by department , age

select * from employee order by department , age desc

--between
select * from Employee where id between 4 and 9

select * from employee where age between 28 and 40 order by age

select * from employee where name between 'Anjali' and 'Puneet'

--sum
select sum(salary) from employee

select sum(salary) as total_salary from employee

--group by

select department  , sum(salary) from employee group by department

select department , gender , sum(salary) from employee group by department , gender

select department , gender , sum(salary) from employee group by gender , department

--having

select department  , sum(salary) from employee group by department 
having department = 'IT'

select department  , sum(salary) from employee group by department 
having department in ('hr', 'it')

select department , gender, sum(salary) from employee where gender= 'Female' 
group by department , gender having sum(salary) > 120000 
order by department desc

--Changing the data type

sp_help 'employee'

alter table employee alter column id varchar(255)
alter table employee alter column id int

use microsoft

select * from employee order by id

with duplicateCTE AS
(
SELECT *, ROW_NUMBER() OVER (PARTITION BY ID ORDER BY ID) AS ROWNUMBER FROM Employee
)
DELETE FROM duplicateCTE WHERE ROWNUMBER >1