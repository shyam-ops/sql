use Microsoft

select * from Employee

create function volume
(
@r float,
@h float
)
returns float 
as begin
return (3.14*@r*@r*@h)
end

select age as r , id as h , dbo.volume(age,id) as volume from employee

alter function volume
(
@r float,
@h float
)
returns float 
as begin
return (3.14*@r*@r*@h)
end

--joins
select * from project

update project set pid = 15 where postal = 1278

insert into project values (30, 'Silk', 'Mysql', 4525), (31, 'Dairy', 'Testing', 7845), (32, 'Tert', 'AWS', 7778), (33, 'Yellow', 'Azure', 4445)

alter table project drop for_key
alter table employee drop pri_key

--inner join
select * from employee e inner join project p on e.id = p.pid

select e.id,e.name,e.gender,e.salary,e.department,p.project_name,
p.technology,p.postal from employee e inner join project p on e.id = p.pid

select e.id,e.name,e.gender,e.salary,e.department,p.project_name,
p.technology,p.postal from employee e inner join project p on e.id=p.pid 
where e.gender='male'

select p.technology,sum(e.salary) as total_salary from employee e inner join
project p on e.id = p.pid group by p.technology

select e.id,p.project_name,e.name,e.age,e.department,e.city,p.postal,e.salary
into empj from employee e inner join project p on e.id = p.pid

select * from empj