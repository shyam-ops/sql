use handsOn

select case
		when 100 < 200 then '100 is less then 200'
		when 100 > 200 then '100 is greater than 200'
		else '100 is qual to 200'
end

/*15 - Using a case statement , find the status of the amount 
column from orders table
-- set the status of the amount as high amount , low amount , 
medium amountb -- based upon the condition.*/

select * from orders

select *,
case
	when amount > 3000 then 'High'
	when amount < 2000 then 'low'
	else 'normal'
end 
as status from orders

select * from fact

select * from productts
-- case study
select count(state) from location

select * from productts

select count(product) as product_type from productts where type = 'regular'

select * from fact

select sum(marketing) from fact

select * from productts

select ProductId  , sales from fact where Sales = (select min(sales) from fact)

--5
select max(COGS) from fact

--6
select * from productts where Product_type = 'Coffee'

--7

select * from fact where total_expenses > 40

select * from location

select * from fact
--8
select Area_code as area_code, avg(sales) as average_sales from fact group by Area_code having Area_code = 719

--9
select l.State, sum(profit) from fact f full join location l on f.Area_code = l.Area_code Group by l.state having l.state = 'Colorado'

--10
select productId , avg(inventory) from fact group by productId order by productid

--11
select state from location  group by state order by  state

--12
select * from fact

select productId, budget_margin from fact group by productId having avg(budget_margin)> 100 

--13
select * from fact
select sum(sales) from fact where Date = '2010-01-01'