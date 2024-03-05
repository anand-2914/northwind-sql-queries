 
  --24 Find the order with the highest total cost
  
  SELECT products.product_name,order_details.quantity*products.unit_price AS total_cost from products
  inner join order_details
  on products.product_id=order_details.product_id
  ORDER BY total_cost DESC
  limit 1;
 
