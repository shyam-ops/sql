use microsoft

--Default
alter table employee add constraint D_c DEFAULT 'India' for country
insert into employee (id,name,age,gender,salary,department) values
(21,'Jagwinder',49,'Male',89000,'HR')

select * from employee

insert into employee  values
(30,'John',29,'Male',54000,'Accounts','Nagpur','USA')


-- add constraint with create table
create table college
(sid int not null, Name varchar(255), sports varchar(255) not null, marks int,
Branch varchar(255), Hostel varchar(255), 
constraint Ch_M CHECK (marks between 20 and 100 ))

insert into college values(101, 'Ashish','Hockey',45,'CSE','Block A')
insert into college values (102,'Riya','Cricket',102,'ECE','Block C')
insert into college values (103,'Riya','Cricket',90,'ECE','Block C')

--Unique KEY
alter table employee add constraint uni_id unique(id)

with duplicateCTE AS
(
SELECT *, ROW_NUMBER() OVER (PARTITION BY ID ORDER BY ID) AS ROWNUMBER FROM Employee
)
DELETE FROM duplicateCTE WHERE ROWNUMBER >1

create table student
(SID int not null, Name varchar(255), Class int, Marks int, 
Sports varchar(255), constraint ch_cl check (class between 1 and 12))

insert into student values
(1,'Amit',8,45,'Cricket'),
(2,'Anil',7,65,'Hockey'),
(3,'Aditya',6,76,'Basketball'),
(4,'Neha',8,87,'Hockey'),
(5,'Seema',9,45,'Tennis'),
(6,'Anjali',10,55,'Basketball'),
(7,'Vini',11,67,'Hockey'),
(8,'Saurav',12,56,'Tennis')
