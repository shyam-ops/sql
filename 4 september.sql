use microsoft

--coalesce
select coalesce(NULL,NULL,NULL,'sql',null,null,'python')

select coalesce(null,null,'This is sql class',null,null,'python')

select * from employee

select *,coalesce(city,'Manali') as updated_city from employee

update employee set department = 'Marketing' where department is null

select department, Gender, sum(salary) as Total_salary from employee group by department,
gender

select department, gender, sum(salary) as total_salary from employee group by rollup(department,gender)

select coalesce(department,'Total'), coalesce(gender,'Male + Female'), sum(salary) as
Total_Salary from employee group by rollup(department,gender)

select distinct(gender) from employee

update employee set gender = 'Male' where gender = 'M'

select floor(25.25)

select floor(25.1004)

select floor(0.01)

select floor(-10.25)

select floor(-20.89)

select CEILING(25.25)

select ceiling(25.89)

select ceiling(-10.01)

--lead lag
select name,lead(name) over (order by name) as lead_quo from employee

select name, lag(name) over (order by name) as lead_quo from employee