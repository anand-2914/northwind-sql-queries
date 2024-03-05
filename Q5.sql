
--5
SELECT employee_id,quantity from orders
inner join order_details
on orders.order_id=order_details.order_id
group by employee_id


