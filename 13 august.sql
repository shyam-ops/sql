use microsoft
select * from project
select * from employee
alter table project add constraint for_key Foreign Key(Pid) References employee(id)
alter table employee add constraint pri_key Primary key(id)
sp_help 'employee'

insert into project values (25,'Zompy','SQL',2451)

insert into employee values(25,'Sakshi',29,'Female',35000,'IT','Jaipur',
'India')

insert into project values (26,'Riddle','Java',4526)
insert into employee values(26,'Sherry',24,'Female',25000,'HR','Chennai',
'India')

sp_help 'employee'
sp_help 'project'
alter table employee drop constraint Pri_key_id
alter table project drop constraint for_key
