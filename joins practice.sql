--joins practical

use microsoft
select * from Employee
select * from project
select * from company
select concat(upper(substring(e.name,1,3)),lower(substring(e.city,1,3)),
upper(substring(p.project_name,1,2)),upper(substring(c.company_name,1,1))) as 
user_name ,concat(lower(substring(e.name,1,1)),e.age,
upper(substring(e.department,1,2)),lower(substring(p.technology,1,2)),
upper(substring(c.location,1,3)),c.count) as password from 
employee e inner join project p on e.id = p.pid inner join company c on 
p.pid = c.cid

--select 2nd largest salary
select max(salary) from employee where salary < (select max(Salary) from employee)
--select 3rd larget salary
select * from employee where salary = (select max(salary) from Employee where salary < (select max(salary) from employee where salary < (select max(salary) from employee)))

--select 4th largest salary
select max(salary) from Employee where salary < 
(select max(salary) from employee where salary < 
(select max(salary) from employee where salary <
(select max(salary)from employee)))

