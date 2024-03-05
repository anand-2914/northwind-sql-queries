--6
SELECT customer_id,quantity
from orders
inner join order_details
on orders.order_id=order_details.order_id
where quantity>10
group by customer_id

