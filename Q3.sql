---3
SELECT products.product_name,order_details.quantity FROM products
INNER JOIN order_details
on products.product_id=order_details.product_id

