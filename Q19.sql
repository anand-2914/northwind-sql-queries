
  ---19 Find the customers who have spent more than $5000 in total
  select orders.customer_id,order_details.quantity*products.unit_price-(order_details.discount) AS TOTAL  from orders
  inner join order_details on orders.order_id=order_details.order_id
  inner join products on  products.product_id=order_details.product_id
  where order_details.quantity*products.unit_price-(order_details.discount)>5000
  ORDER BY total DESC;
  
