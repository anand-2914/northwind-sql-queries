
--7  Get the top 5 most sold products
SELECT product_name,quantity
from order_details 
inner join products
on order_details.product_id=products.product_id
ORDER BY quantity DESC
LIMIT 5;


