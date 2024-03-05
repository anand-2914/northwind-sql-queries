

---38 Classify employees based on the number of orders they have processed such that NumberOfOrders > 100 
--Then PerformanceCategory as ‘High Performing’. If NumberOfOrders>50 Then ‘Medium Performing’ and else ‘Lower Performing’
SELECT employees.first_name, 
       COUNT(DISTINCT orders.order_id) AS NoofOrders, 
       CASE 
           WHEN COUNT(DISTINCT orders.order_id) > 100 THEN 'High Performing' 
           WHEN COUNT(DISTINCT orders.order_id) > 50 THEN 'Medium Performing' 
           ELSE 'Lower Performing' 
       END AS PerformanceCategory 
FROM order_details 
INNER JOIN orders ON order_details.order_id = orders.order_id 
INNER JOIN employees ON orders.employee_id = employees.employee_id 
GROUP BY employees.first_name;
