
  --36 Classify customers based on their total order amounts such that total order amounts > 5000 should
  --be classified as ‘High Value’, if > 1000 then as ‘Medium Value’ and otherwise as ‘Low Value’
  
  SELECT customers.company_name,SUM(order_details.quantity*products.unit_price) AS TotalOrderAmount,
CASE
    WHEN SUM(order_details.quantity*products.unit_price) > 5000 THEN 'High Value'
    WHEN SUM(order_details.quantity*products.unit_price)>1000  THEN 'Medium Value'
    ELSE 'Low Value'
END AS CustomerClass
FROM order_details
INNER JOIN customers on customers.customer_id=orders.customer_id
INNER JOIN orders on orders.order_id=order_details.order_id
INNER JOIN products ON order_details.product_id = products.product_id 
group by company_name

  