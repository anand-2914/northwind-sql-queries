SELECT * FROM products

---1
select customer_id,Count(orders.order_id) from orders
group by customer_id 


