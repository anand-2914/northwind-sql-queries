
  --27. Find the average quantity of products ordered in each order
  select products.product_name,AVG(order_details.quantity) AS avgs from products
  inner join order_details
  on order_details.product_id=products.product_id
  GROUP BY  products.product_name
