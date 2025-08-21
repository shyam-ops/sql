--Primary key 
Use microsoft 
select * from employee 
alter table employee drop constraint uni_id 
alter table employee alter column id int not null

alter table employee add constraint Pri_key_id Primary key(id) 
select * from employee 
insert into employee values (23, 'Tanuja', 45, 'Female', 80000, 'Marketing', 'Bangalore', 'India') 
insert into employee values (24, 'Tanuja', 45, 'Female', 80000, 'Marketing', 'Bangalore', 'India')

sp_help employee

create table project( PID int , Project_name varchar(255) , Technology varchar(255)
, Postal int)

insert into project values
(1,'Kite','Java',2334),
(2,'Lime','SQL',3222),
(3,'Rabbit','Azure',4223),
(4,'Telenor','Mysql',4345),
(5,'Kalmar','Oracle',4545),
(6,'Version','AWS',5242),
(7,'BBG','Testing',5453),
(8,'Airtel','Automation',3555),
(9,'Jhonson','Python',3455),
(10,'Dabour','DataScience',2345),
(11,'Amul','Azure',6432),
(12,'VedioN','Mysql',5664),
(13,'Mikeey','Oracle',3456),
(14,'Best_Buy','AWS',4332),
(15,'Trimp','Testing',4566)

select * from project