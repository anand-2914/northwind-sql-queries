
  
  ---25
select employees.first_name,employees.last_name,count(orders.order_id) AS total_orders from employees
inner join orders on employees.employee_id=orders.employee_id
 group by employees.employee_id
 HAVING total_orders>100
  ORDER BY total_orders DESC
