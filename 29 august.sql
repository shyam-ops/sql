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