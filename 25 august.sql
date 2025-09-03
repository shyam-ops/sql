use microsoft

select top(5) * from employee

select top(5) salary from Employee

select top(5) salary from employee order by salary desc

select distinct top(10) salary from employee order by salary desc

--select nth salary
select id , salary from employee where salary =(select min(salary) from employee where salary in
(select distinct top(7) salary from employee order by salary desc))

select * from employee

--rank and dense rank
select *,rank() over (order by salary desc) as salary_rank from employee

select rank() over (order by age desc) as age_rank into age_r from employee

select *,rank() over (order by age desc) as age_rank  from employee

select *,rank() over (age) as age_rank  from employee

select *,rank() over (order by city) as city_rank from employee

select *,dense_rank() over(order by salary desc) as salary_rank from employee

select id,name,salary,rank() over(order by salary desc) as sal_rank,
DENSE_RANK() over (order by salary desc) as sal_dense_rank from employee

