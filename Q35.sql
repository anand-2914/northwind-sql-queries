

---35  Find the total sales for each year


SELECT SUM(order_details.quantity*products.unit_price) AS total_sales,YEAR(orders.order_date) AS YEAROFSALE from products
inner join order_details
  on products.product_id=order_details.product_id
inner join orders
  on orders.order_id=order_details.order_id
  GROUP BY YEAR(orders.order_date)
 
