select sum(total_price) AS Total_Revenue from pizza_sales 

select sum(total_price) / count(distinct order_id) As Average_Order_value from pizza_sales

select sum(quantity) AS Total_Pizzas_Sold from pizza_sales

select count(Distinct order_id) As Total_Orders from pizza_sales

select cast(cast(sum(quantity)AS decimal(10,2)) /
cast(count(distinct order_id)AS decimal(10,2)) As decimal(10,2)) As Average_pizzas_per_Orders
from pizza_sales

select DATENAME(DW,order_date) AS day,count(Distinct order_id) As Total_Orders 
from pizza_sales
group by DATENAME(DW,order_date)

select DATENAME(month,order_date) AS day_per_month,count(Distinct order_id) As Total_Orders 
from pizza_sales
group by DATENAME(month,order_date)

select pizza_category, cast(sum(total_price)As decimal(10,2))AS total_Price,
cast(sum(total_price)*100 /
(select sum(total_price) from pizza_sales) As decimal (10,2)) As PCT
from pizza_sales
group by pizza_category
order by sum(total_price) DESC

select pizza_size,cast(sum(total_price)As decimal(10,2)),
cast(sum(total_price)/
(select sum(total_price) from pizza_sales) *100 AS decimal(10,2)) As PCT 
from pizza_sales 
group by pizza_size
order by pizza_size

select pizza_category, sum(quantity) As total_Pizza_Sold from pizza_sales
group by pizza_category
order by sum(quantity) desc

select top 5 pizza_name,sum(total_price) AS Total_Revenue from pizza_sales
group by pizza_name
order by Total_Revenue Desc

select top 5 pizza_name,cast(sum(total_price) AS decimal (10,2)) AS Total_Revenue from pizza_sales
group by pizza_name
order by Total_Revenue

select top 5 pizza_name , sum(quantity) As Total_Quantity from pizza_sales
group by pizza_name
order by Total_Quantity Desc

select top 5 pizza_name , sum(quantity) As Total_Quantity from pizza_sales
group by pizza_name
order by Total_Quantity 

select top 5 pizza_name, count(distinct order_id) As Total_Orders from pizza_sales
group by pizza_name
order by Total_Orders Desc

select top 5 pizza_name, count(distinct order_id) As Total_Orders from pizza_sales
group by pizza_name
order by Total_Orders Asc

