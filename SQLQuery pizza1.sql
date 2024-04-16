

select * from pizza_sales_project

------------------------- SALES KPI -------------------------------

----- Total Revenue -----
select SUM(total_price) AS Total_Revenue FROM pizza_sales_project

----- Average Order Value -----
SELECT (SUM(total_price) / COUNT(DISTINCT order_id)) AS Avg_order_Value FROM pizza_sales_project

----- Total pizza sold -----
SELECT SUM(quantity) AS Total_pizza_sold FROM pizza_sales_project

----- Total orders -----
SELECT COUNT(DISTINCT order_id) AS Total_Orders FROM pizza_sales_project

----- Average Pizza Per Order  -----
select cast(cast(sum(quantity) as decimal(10,2)) / 
cast(count(distinct order_id) as decimal(10,2)) AS decimal (10,2))
as avg_pizza_per_order 
from pizza_sales_project



-------- CHARTS REQUIREMENTS ------------

select * from pizza_sales_project

---------- Daily Trend for Total Orders -----------
SELECT DATENAME(DW, order_date) AS order_day, COUNT(DISTINCT order_id) AS total_orders 
FROM pizza_sales_project
GROUP BY DATENAME(DW, order_date)

---------- Monthly Trend for Orders -----------
SELECT DATENAME (MONTH, ORDER_DATE) AS MONTH_NAME,COUNT(DISTINCT order_id) AS total_orders 
FROM pizza_sales_project
GROUP BY DATENAME (MONTH, order_date)
ORDER BY 2

---------- % of Sales by Pizza Category ---------
SELECT distinct pizza_category, 
cast(SUM(total_price) as decimal(10,2)) as total_revenue, 
cast(SUM(total_price) * 100 / (select sum(total_price) from pizza_sales_project)
as decimal(10,2)) as pct
from pizza_sales_project
group by pizza_category

---------- % of Sales by Pizza Size ----------
SELECT distinct pizza_size,
cast(SUM(total_price) as decimal(10,2)) as total_revenue, 
cast(SUM(total_price) * 100 / (select sum(total_price) from pizza_sales_project)
as decimal(10,2)) as pct
from pizza_sales_project
group by pizza_size
order by pizza_size

----------- F. Total Pizzas Sold by Pizza Category
SELECT distinct pizza_size,
cast(SUM(total_price) as decimal(10,2)) as total_revenue, 
cast(SUM(total_price) * 100 / 
(select sum(total_price) from pizza_sales_project WHERE DATEPART (quarter, order_date)=1)
as decimal(10,2)) as pct
from pizza_sales_project
WHERE DATEPART (quarter, order_date)=1
group by pizza_size
order by pizza_size

select pizza_category, sum(quantity) as total_quantity_sold
from pizza_sales_project
where month(order_date) = 1
group by pizza_category
order by total_quantity_sold desc

----------- Top 5 Pizzas by Revenue -----------
select top 5 pizza_name, sum(total_price)
as total_revenue
from pizza_sales_project
group by pizza_name
order by total_revenue desc

---------- Bottom 5 Pizzas by Revenue ----------
select top 5 pizza_name, sum(total_price)
as total_revenue
from pizza_sales_project
group by pizza_name
order by total_revenue asc

----------- Top 5 Pizzas by Quantity -----------
SELECT Top 5 pizza_name, 
SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales_project
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold DESC

----------- Bottom 5 Pizzas by Quantity -----------
SELECT Top 5 pizza_name, 
SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales_project
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold asc

----------- Top 5 Pizzas by Total Orders -----------
SELECT Top 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales_project
GROUP BY pizza_name
ORDER BY Total_Orders DESC

----------- Bottom 5 Pizzas by Total Orders -----------
SELECT Top 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales_project
GROUP BY pizza_name
ORDER BY Total_Orders asc
