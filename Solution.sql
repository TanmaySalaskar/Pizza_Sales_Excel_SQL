-- SOLUTION
USE pizzadb;
select * from sales;

SELECT cast(SUM(total_price) as decimal(10,2)) AS Total_Revenue FROM sales;

select cast((sum(total_price)/count(distinct order_id)) as decimal(10,2)) as Avg_Order_Value from sales;

select sum(quantity)  as Total_Pizzas_Sold from sales;

select count(distinct order_id) as Total_Orders from sales;

select cast((sum(quantity)/count(distinct order_id)) as decimal(10,2)) as Avg_Pizzas_per_order from sales;

SELECT DAYNAME(order_date) AS order_day, COUNT(DISTINCT order_id) AS total_orders
FROM sales
GROUP BY DAYNAME(order_date)
order by total_orders desc;

SELECT HOUR(order_time) AS order_hours, COUNT(DISTINCT order_id) AS total_orders
FROM sales
GROUP BY HOUR(order_time)
ORDER BY total_orders desc;

SELECT pizza_category, CAST(SUM(total_price) AS DECIMAL(10,2)) as total_revenue,
CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) from sales) AS DECIMAL(10,2)) AS PCT
FROM sales
GROUP BY pizza_category
ORDER by PCT desc;

SELECT pizza_size, CAST(SUM(total_price) AS DECIMAL(10,2)) as total_revenue,
CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) from sales) AS DECIMAL(10,2)) AS PCT
FROM sales
GROUP BY pizza_size
ORDER BY PCT desc;

select pizza_category, sum(quantity) as Total_Sold 
from sales
group by pizza_category
order by Total_Sold desc;

SELECT Top 5 pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold DESC;

SELECT pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold DESC
LIMIT 5;

SELECT pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold
LIMIT 5;
















