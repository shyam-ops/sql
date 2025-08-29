create database joins_practice
use joins_practice

create table customer(id int primary key, name varchar(100) , 
city varchar(100))

insert into customer values
(1,'Aditi Sharma','Nagpur'),
(2,'Rahul Mehta','Mumbai'),
(3,'Priya Nair','Pune'),
(4,'Kunal patil','Delhi')

sp_rename 'customer.id','c_id'

create table orders(o_id int primary key,c_id int,order_date date, total_amount int
foreign key (c_id) references customer(c_id))

select * from orders

insert into orders values
(101,1,'2025-08-01',1200),
(102,2,'2025-08-02',2500),
(103,1,'2025-08-05',800),
(104,3,'2025-08-06',1500),
(105,4,'2025-08-07',3000)

create table products(p_id varchar(50) primary key,p_name varchar(50),
category varchar(50),price int)

insert into products values
('p1','Laptop','category',50000),
('p2','Mobile','Electronics',20000),
('p3','Chair','Furniture',3000),
('p4','Table','Furniture',7000)

create table OrderDetails(o_id int,p_id varchar(50), quantity int,
foreign key(o_id) references orders(o_id),
foreign key(p_id) references products(p_id))

insert into OrderDetails values
(101,'p2',1),
(101,'p3',2),
(102,'p1',1),
(103,'p4',1),
(104,'p2',2),
(105,'p1',1),
(105,'p4',1)


--1)List all orders with the customer name.
select o.o_id,o.order_date,o.total_amount,c.name from customer c 
inner join orders o on c.c_id = o.c_id

--2)Show customer names and the products they purchased.
select c.name,p.p_name from customer c inner join orders o on
c.c_id = o.c_id inner join orderdetails od  on  o.o_id = od.o_id inner join 
products p on od.p_id = p.p_id

--3)Find all orders along with their total amount and customer city.
select o.*,c.city from customer c inner join orders o on c.c_id = o.c_id

--4)List customers who haven’t placed any orders.
select c.* from customer c left join orders o on c.c_id = o.c_id where o.o_id
is null

--5)Show all products and the number of times they were ordered.
select p.p_name,count(od.p_id) from products p left join OrderDetails od on 
p.p_id = od.p_id group by p.p_name

--6)Find customers who ordered products from the 'Furniture' category.
select c.*,o.order_date from customer c inner join orders o on c.c_id = o.c_id inner join
OrderDetails od on o.o_id = od.o_id inner join products p on od.p_id = p.p_id
where category = 'Furniture'

--7)Get each order’s product list with product names and quantities.
select o.o_id,p.p_name,sum(od.quantity) from orders o inner join OrderDetails od on 
o.o_id = od.o_id inner join products p on 
od.p_id = p.p_id group by o.o_id,p.p_name

--8)Show the total spend of each customer.
select o.c_id, c.name,sum(o.total_amount) from customer c inner join orders o
on c.c_id = o.c_id group by o.c_id,c.name

--9)List customers who ordered both 'Laptop' and 'Mobile'.
select c.*, p.p_name from customer c inner join orders o on c.c_id = o.c_id
inner join OrderDetails od on o.o_id = od.o_id inner join products p on 
od.p_id = p.p_id where p.p_name in ('Laptop' , 'Mobile')

--10)

