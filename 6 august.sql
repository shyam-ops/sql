use microsoft

--UNION
select * from employee where gender = 'male'
union
select * from employee where department = 'IT'
union
select * from employee where city = 'pune'

--UNION
select * from employee where gender = 'male'
union all
select * from employee where department = 'IT'

-- Except
select * from employee where gender = 'Male'
except
select * from Employee where department = 'IT'

select * from Employee where Gender = 'Female'
except
select * from employee where department = 'HR'

-- operator and clauses
select * from employee
alter table employee rename column 'country' to 'Nation'
-- like clause
select * from employee where Name like 'a%'

select * from employee where name like '%a'
select * from employee where name like '_a%'
select * from employee where name like '%a_'
select * from employee where name like '__n%'
select * from employee where name like '%n%'
select * from employee where name like '%ni'

--IN
select * from employee where id in(1,2,3,4,5,6)

select * from employee where name in ('Naveen', 'Amit' , 'Puneet')

select * from employee where salary in (70000, 87000, 80000)

select * from employee where not department in('HR', 'IT')

