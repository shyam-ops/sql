create database shyamm
use shyamm

create table students(student_id int, name varchar(255), age int, city varchar(255))
create table products(product_id int, product_name varchar(255), category varchar(255), price float)
create table employees(emp_id int, emp_name varchar(255), department varchar(255), salary float)
create table orders(order_id int, customer_name varchar(255), order_date date, amount float)
create table customers(customer_id int, full_name varchar(255), email varchar(255), city varchar(255))
--Students
insert into students values
(1,'Ravi',20,'Nagpur'),
(2,'Sneha',NULL,'Pune'),
(3,'Ravi',20,'Mumbai'),
(5,'Amit',NULL,NULL)

insert into students values
(4,NULL,21,'Mumbai')

--products
insert into products values
(101,'Laptop','Electronics',55000),
(102,'Mobile','Electronics',NULL),
(103,'Laptop','Electronics',55000),
(104,NULL,'Furniture',3000),
(105,'Table',NULL,2500)

--Employees
insert into employees values
(1,'Rohan','HR',35000),
(2,'Neha','IT',NULL),
(3,'Rohan','HR',35000),
(4,NULL,'Finance',40000),
(5,'Vikas',NULL,NULL)

--orders
insert into orders values
(1,'Ankit','2024-07-15',1200),
(2,'Priya',NULL,1500),
(3,'Ankit','2024-08-01',1200),
(4,NULL,'2024-08-01',2000),
(5,'Suresh',NULL,NULL)

--customers
insert into customers values
(1,'Rajesh','rajesh@gmail.com','Nagpur'),
(2,'Meena',NULL,'Mumbai'),
(3,'Rajesh','rajesh@gmail.com','Nagpur'),
(4,NULL,'anita@yahoo.com',NULL),
(5,'Vivek','vivek@gmail.com',NULL)