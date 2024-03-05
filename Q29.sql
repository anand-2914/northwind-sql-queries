
--29 29. Find the month in the year 2016 with the highest total sales

 select YEAR(order_date) AS year, MONTH(order_date) AS month, 
 SUM((order_details.quantity*products.unit_price)- order_details.discount) AS revenue
 FROM orders
 INNER JOIN order_details on orders.order_id=order_details.order_id
  INNER JOIN products on order_details.product_id=products.product_id 
WHERE YEAR(orders.order_date) = 2016
group by year(order_date),month(order_date)
ORDER BY revenue desc
LIMIT 1;

