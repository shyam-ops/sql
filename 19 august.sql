use microsoft

select * from employee

/* Generate username and password for for the employees from employee table 
in below format Username(First three letters of name in capital + first letter
of gender in lower + first two letter of department in capital + first three 
letters of city in capital) Password (First two letters of name in lower + 
age + first three letters of gender in lower + first letter of department in
capital + first two letters of city in lower )*/ 
select id , name, concat(upper(substring(name, 1, 3)), 
lower(substring(gender, 1, 1)), upper(substring(department, 1,2)), 
upper(substring(city, 1,3))) as USERNAME,

CONCAT(lower(substring(name, 1,2)),
age, lower(substring(gender, 1,3)), upper(substring(department, 1,1)), 
lower(substring(city, 1,2))) as PASSWORD FROM EMPLOYEE

--user defined function
create function multiply3
(
@a int,
@b int,
@c int
)
returns int 
as begin
return @a * @b * @c
end

select dbo.multiply3(2,3,4)

create function SI
(
@p float,
@r float,
@t float
)
returns float
as begin
return (@p*@r*@t)/100
end

select dbo.SI(12000,7,2) as 'Interest'

select name , salary as Principle , age as ROI , id as Time, dbo.SI(salary,age,id) 
as Interest from employee