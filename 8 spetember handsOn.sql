create database handsOn
use handsOn
-- 1 - Create a customer table which comprises of these columns - 
-- customer_id' , 'first_name','last_name','email','address','city','state,'zip'

create table customer(customer_id int, first_name varchar(255), 
last_name varchar(255), email varchar(255), address varchar(255),
city varchar(255), state varchar(255), zip bigint)

insert into customer values
(1,'Abhishek' ,'Singh','as@gmail.com','MG Road','Mumbai','Maharashtra','43003'), 
(2,'Ishika','K','ik@outlook.com','VV Puram','Bang','Karnataka','456781'), 
(3,'Chirag','Dhamija','cd@gmail.com','LK Puram','Hyderabad','Telangana','560001'), 
(4,'Vivek','Gupta','vk@gmail.com','Raj Nagar','Delhi','Delhi','23561'), 
(5,'Ganesh','Ranaa','gr@gmail.com','Lalnagar','San Jose','USA','987654')

select * from customer

select first_name, last_name from customer 

select * from customer where first_name like 'G%' and  city = 'san jose'

select * from customer where email like '%gmail%'

select * from customer where last_name not like '%a'
alter table orders add order_month date

drop table orders
create table orders(order_id int,order_date date, amount money, customer_id int )

insert into orders values
(101,'2002-05-23',2000,5),
(103,'2021-02-15',1500,3),
(105,'2023-03-1',1800,1),
(102,'2024-04-26',6000,2),
(104,'2025-06-12',3000,4)