
--15  Find the total revenue for the year 2016

 select SUM((order_details.quantity*products.unit_price)- order_details.discount) AS revenue
 FROM orders
 INNER JOIN order_details on orders.order_id=order_details.order_id
  INNER JOIN products on order_details.product_id=products.product_id 
WHERE YEAR(orders.order_date) = 2016;



