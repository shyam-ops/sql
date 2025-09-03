use microsoft

--row number
select *,row_number() over (order by name) as name_number from employee
select *, row_number() over (order by age) as age_number from employee
select *,row_number() over (order by department) as dept_no from employee
select *,row_number() over (order by city) as city_number from employee
select *,row_number() over (partition by department order by department) 
as dept_no from employee
select *,row_number() over (partition by name order by age) 
as agr_no from employee
select *,row_number() over (partition by gender order by name) as roll_no
from employee

insert into employee values(33,'Romel',35,'Male',65000,'IT','Surat','India')

select * from Employee

select *,row_number() over (partition by id order by id) as id_no from employee

select count(name) from employee where name = 'romel'
delete top(7) from employee where name = 'romel'

insert into employee values (34, 'Tony', 29, 'Male', 56000, 'HR', 
'Jaipur', 'India'), (35, 'Reshma', 35, 'Female', 63000, 'IT', 'Pune', 'India')
, (36, 'Clyde', 56, 'Male', 98000, 'IT', 'Aukland', 'New Zealand') 

insert into employee (id, name, age, gender) values (37, 'Mike', 25, 'Male'),
(38, 'Johanna', 45, 'Female'), (39, 'Leonado', 46, 'Male') 

select * from employee 
select *, row_number() over ( partition by id order by id ) as Roll_number from employee
--CTE
with lion as
(
select * , row_number() over(partition by id order by id) as id_no from employee
)
delete from lion where id_no > 1