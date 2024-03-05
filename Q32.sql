 
  
  --32 Find the employees who have not processed any orders 
  SELECT employees.employee_id, COUNT(orders.order_id) AS total
FROM employees
LEFT JOIN orders ON orders.employee_id = employees.employee_id
GROUP BY employees.employee_id
HAVING total = 0;

