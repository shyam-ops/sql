use Microsoft
select * from employee
select * from project
select * from company
select * from employee e inner join project p on e.id = p.pid inner join 
company c on p.pid = c.cid

select e.id, e.name, e.gender, e.department, e.city, p.project_name, 
p.technology, p.postal, c.company_name, c.location from employee e 
inner join project p on e.id = p.pid inner join company c on p.pid = c.cid

