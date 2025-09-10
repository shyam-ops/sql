use handsOn

-- 9- Make an inner join on 'Customer' and 'Orders' 
-- tables on the 'customer_id'

select * from customer c inner join Orders o on c.customer_id = o.customer_id


select * from customer c left join Orders o on c.customer_id = o.customer_id



select * from customer c right join Orders o on c.customer_id = o.customer_id

update orders set amount = 100 where customer_id = 3

-- 12 - Use the inbuilt functions and find the -- minimum , maximum and average amount from the orders
select min(amount) as 'minimum_amount', max(amount) as maximum_amount, 
avg(amount) as average_amount from orders

create function product
(
@a int
)
returns int
as
begin
return(@a * 10)
end

select dbo.product(5)
