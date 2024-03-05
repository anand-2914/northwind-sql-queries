

--37. Classify products based on their sales volume such that TotalQuantity > 1000 
--Then SalesCategory as ‘High Sales’. If TotalQuantity>500 Then ‘Medium Sales’ and else ‘Lower Sales’ 

 SELECT products.product_name,SUM(order_details.quantity) AS TotalQuantity,
CASE
    WHEN SUM(order_details.quantity) > 1000 THEN 'High Sales'
    WHEN SUM(order_details.quantity)>500  THEN 'Medium Sales'
    ELSE 'Low Sales'
END AS SalesCategory
FROM order_details
INNER JOIN products ON order_details.product_id = products.product_id 
group by product_name

  