use microsoft
--full join
select * from employee e full join project p on e.id = p.pid

--left join
select * from employee e left join project p on e.id = p.pid

--right join
select * from employee e right join project p on e.id = p.pid

select * from employee cross join project


create table company(cid int, company_name varchar(255), location varchar(255)
,count int)

insert into company values
(1,'TCS','Noida',422),
(2,'Wipro','Gurgaon',422),
(3,'IBM','New york',545),
(4,'Accenture','Sen Jose',553),
(5,'HCL','Mumbai',123),
(6,'Infosys','Mysore',324),
(7,'Meta','Seattle',345),
(8,'Netflix','New york',434),
(9,'Twitter','Ohio',957),
(10,'Zomato','Banglore',454),
(11,'Swiggy','Pune',562),
(12,'UBER','Mumbai',456),
(13,'Amazon','Seattle',652),
(14,'Flipkart','Delhi',789),
(15,'Youtube','Tokyo',125)

select * from company
