
 --12

SELECT orders.employee_id, 
       SUM((order_details.quantity * products.unit_price )- order_details.discount) AS total_revenue
  FROM order_details
 INNER JOIN orders ON order_details.order_id = orders.order_id
 INNER JOIN products ON order_details.product_id = products.product_id
 GROUP BY orders.employee_id;

