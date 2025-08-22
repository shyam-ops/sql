use microsoft
--full join
select * from employee e full join project p on e.id = p.pid

--left join
select * from employee e left join project p on e.id = p.pid

--right join
select * from employee e right join project p on e.id = p.pid

select * from employee cross join project