--Operators and clauses
use microsoft

select * from employee

--AND

select * from employee where department = 'IT' and Gender = 'male'
select * from employee where gender = 'Female' and department = 'HR'
select * from employee where gender = 'male' and city = 'delhi'
select * from employee where gender = 'male' and city  = 'delhi' 
and department = 'marketing'

--OR
select * from Employee where department = 'IT' or gender = 'male'
select * from employee where department = 'HR' or gender = 'female'

--not
--NOT 
select * from employee where gender != 'male' 
select * from employee where gender <> 'male' 
select * from employee where not gender = 'male' 
select * from employee where department != 'IT'

select * from employee where (department = 'IT' and city = 'Delhi') 
or (department = 'accounts' and city = 'Pune') 
or gender != 'male'

--Greater than or greater than equal to
select * from employee where age>40
select * from Employee where age >= 40
select * from employee where salary >50000
select * from employee where salary >=50000

-- less than or less than equl to
select * from employee where age < 35
select * from employee where age <= 35
select * from employee where salary < 50000
select * from employee where salary <= 50000

--Intersect
select * from employee where department = 'IT'
INTERSECT
select * from employee where gender  = 'Male'

select * from employee where department = 'IT'
INTERSECT
select * from employee where gender = 'Male'
INTERSECT
select * from Employee where salary > 70000