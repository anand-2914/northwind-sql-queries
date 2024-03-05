
--8  Find the products that have never been ordered

SELECT product_name,quantity
from order_details 
inner join products
on order_details.product_id=products.product_id
where quantity=0
group by product_name

