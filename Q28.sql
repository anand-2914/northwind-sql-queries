
  
  ---28 Find the top 3 most popular categories of products ordered
  SELECT categories.category_name, COUNT(orders.order_id) AS total_orders
FROM orders
JOIN order_details ON orders.order_id = order_details.order_id
JOIN products ON order_details.product_id = products.product_id
JOIN categories ON products.category_id = categories.category_id
GROUP BY categories.category_name
ORDER BY total_orders DESC
LIMIT 3;

