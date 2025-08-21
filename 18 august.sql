use microsoft
select * from Employee

--System functions

--lower
select lower(name) from employee
select lower(city) from employee

--upper
select upper(name) from employee

--reverse
select reverse(name) from employee

select name as full_name , lower(name) as lower_name , upper(name) as upper_name,
reverse(name) as reverse_name , lower(reverse(name)), upper(reverse(name)) as upper_name from employee

--concat
select concat(id , name , age , gender , salary , department , city) from employee

select concat(id ,' ', name ,' ', age,' ' , gender,' ' , salary,' ' , department,' ' , city) from employee

select concat(id ,' ', name ,'@ ', age,'$ ' , gender,' ' , salary,'* ' , department,'/ ' , city) from employee

select concat(name, ' id is ', id, ', age is ',age,', gender is ',gender,
' is earning ',salary, ', is from ',department,', department belongs to ',
city,'.') as Information from employee where gender = 'male'

--replace
select replace('This is month of july' , 'july' , 'August')

select *, replace(city, 'delhi','New delhi') as updated_city from employee

--len
select name , len(name) from employee
select name , len(name) , department,len(department) , age ,len(age) 
from Employee

--substring
select substring('This is SQL class',1,4)
select SUBSTRING('Im Shyam Patil Student  of Data Science',16,4)