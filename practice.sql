create database practice

use practice

create table products(
p_id int primary key,
p_name varchar(50),
price decimal(10,2),
stock int)

insert into products values
(1,'Laptop',55000,30),
(2,'Mobile',20000,150),
(3,'Headphones',2000,300),
(4,'Keyboard',1500,250),
(5,'Monitor',12000,100)

create table customer(
c_id int primary key,
c_name varchar(100),
city varchar(100),
state varchar(50),
customer_type varchar(50)
)

insert into customer values
(1,'Shyam','Nagpur','Maharashtra',null),
(2,'Abhishek','Mumbai','Maharashtra',null),
(3,'Kunal','Pune','Maharashtra',null),
(4,'Subjit','Delhi','Delhi',null),
(5,'Rohan','Nagpur','Maharashtra',null)

create table orders(
o_id int primary key,
c_id int,
order_date date,
foreign key(c_id) references customer(c_id)
)

INSERT INTO orders VALUES
(101, 1, '2025-08-01'),
(102, 2, '2025-08-02'),
(103, 3, '2025-08-03'),
(104, 1, '2025-08-04'),
(105, 5, '2025-08-05');

CREATE TABLE orderdetails (
    od_id INT PRIMARY KEY,
    o_id INT,
    p_id INT,
    quantity INT,
    FOREIGN KEY (o_id) REFERENCES orders(o_id),
    FOREIGN KEY (p_id) REFERENCES products(p_id)
);

INSERT INTO orderdetails VALUES
(1, 101, 1, 1),   -- Shyam bought 1 Laptop
(2, 101, 3, 2),   -- Shyam bought 2 Headphones
(3, 102, 2, 1),   -- Abhishek bought 1 Mobile
(4, 103, 4, 3),   -- Kunal bought 3 Keyboards
(5, 104, 5, 1),   -- Shyam bought 1 Monitor
(6, 105, 2, 2);   -- Rohan bought 2 Mobiles

CREATE TABLE shipping_table (
    s_id INT PRIMARY KEY,
    o_id INT,
    shipping_status VARCHAR(20),
    cost DECIMAL(10,2),
    status VARCHAR(20),
    FOREIGN KEY (o_id) REFERENCES orders(o_id)
);

INSERT INTO shipping_table VALUES
(1, 101, NULL, 500, NULL),
(2, 102, 'Shipped', 300, NULL),
(3, 103, 'Pending', 200, NULL),
(4, 104, NULL, 400, NULL),
(5, 105, 'Delivered', 250, NULL);

update products set price = price + 0.1*price

update customer set city = 'Nagpur' where state = 'Maharashtra'

update products set stock = 50,price = 60000 where p_name = 'Laptop'

update products set price = price + 0.05*price where p_id in (select od.p_id from orderdetails od  full join orders o on od.o_id = o.o_id full join
 customer c on c.c_id = o.c_id where c.c_name = 'Shyam')

 update shipping_table set shipping_status = 'pending' where shipping_status is null

 update customer set c_name = CONCAT(c_name , '- Premium') where 
 c_id in(select c_id from orders group by c_id having count(o_id)>1)

 update shipping_table set cost = cost + 100 where o_id in
 (select o.o_id from shipping_table st full join orders o on st.o_id = o.o_id
 full join orderdetails od on od.o_id = o.o_id full join products p
 on od.p_id = p.p_id where p.p_name = 'Mobile')

 update products set price = price-0.2*price where stock>200

 update customer set customer_type =  CASE
 when city = 'Nagpur' then 'Local'
 when city = 'Mumbai' then 'Metro'
 else 'Other'
 end

