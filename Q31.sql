
  --31 31. Find the top 3 customers who have ordered the most products
  
  select customers.contact_name,count(orders.order_id) as total_order from customers
  inner join orders on orders.customer_id=customers.customer_id
  group by contact_name
    ORDER BY total_order 
    DESC limit 3
