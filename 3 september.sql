use microsoft

--row number
select *,row_number() over (order by name) as name_number from employee
select *, row_number() over (order by age) as age_number from employee
select *,row_number() over (order by department) as dept_no from employee
select *,row_number() over (order by city) as city_number from employee