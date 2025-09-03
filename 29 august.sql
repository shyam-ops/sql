--Stored procedure
use microsoft
create procedure hike
as 
select *,(salary*1.1) as New_salary from employee

exec hike
exec hike

sp_helptext 'hike'

alter procedure hike
as select *,(salary * 1.2) as new_salary from employee

exec hike

create procedure salary_slip
as
select e.id,e.name,(e.salary * 0.3) as Spe_allowence , (e.salary * 0.5) as
HRA,(e.salary * 0.4) as Income_tax,(e.age*25) as professional_tax,
(p.postal * 1.5) as LTA,(c.count*5) as bonus,(p.postal + c.count) as 
food_allowance from employee e inner join project p on e.id = p.pid inner join 
company c on c.cid = p.pid

exec salary_slip