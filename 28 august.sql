use microsoft
select * from employee
select * from employee where city = 'delhi'
--NON CLUSTERED INDEX
create index in_city on employee(city)

create nonclustered index Inx_age on employee(age)

select * from employee where age = 45

drop index employee.in_city
drop index employee.inx_age

alter table employee alter column id int not null
alter table employee add constraint pri_id Primary key(id)

alter table employee drop constraint pri_id

create clustered index inx_name on employee(name)

alter table employee add constraint pri_id Primary key nonclustered(id)

alter table employee drop constraint pri_id

drop index employee.inx_name

