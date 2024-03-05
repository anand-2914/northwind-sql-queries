

--30 Find the employee who processed the most orders in August 2016
select employees.first_name,employees.last_name,count(orders.order_id) AS total_orders from employees
inner join orders on employees.employee_id=orders.employee_id 
 INNER JOIN order_details on orders.order_id=order_details.order_id
 WHERE YEAR(orders.order_date) = 2016 and month(orders.order_date)=8
  group by employees.employee_id
  ORDER BY total_orders DESC
  

