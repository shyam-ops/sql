use microsoft

select top(5) * from employee

select top(5) salary from Employee

select top(5) salary from employee order by salary desc

select distinct top(10) salary from employee order by salary desc

--select nth salary
select id , salary from employee where salary =(select min(salary) from employee where salary in
(select distinct top(7) salary from employee order by salary desc))

select * from employee