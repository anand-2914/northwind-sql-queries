
--21 Get the list of customers who have ordered ‘Chai’ product
select customers.customer_id,products.product_name from customers
inner join orders on customers.customer_id=orders.customer_id
inner join order_details on orders.order_id=order_details.order_id
inner join products on order_details.product_id=products.product_id
where product_name='Chai'


