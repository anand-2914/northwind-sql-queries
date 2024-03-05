

 --20 20. List the top 5 employees who have processed the most orders
 
 select employees.employee_id,employees.first_name,employees.last_name,Count(orders.order_id) as total_orders
 from employees
 inner join orders on employees.employee_id=orders.employee_id
 group by employees.employee_id
  ORDER BY total_orders DESC
  limit 5;
 
