
  --26 Find the customer who has ordered the most ‘Chai’ product
SELECT customers.customer_id, products.product_name, COUNT(order_details.order_id) AS total
FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id
INNER JOIN order_details ON orders.order_id = order_details.order_id
INNER JOIN products ON order_details.product_id = products.product_id
WHERE products.product_name = 'Chai'
GROUP BY customers.customer_id, products.product_name
ORDER BY total DESC
LIMIT 1;
