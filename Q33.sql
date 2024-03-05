
--33 . Find the suppliers who supply the top 5 most sold products

SELECT suppliers.supplier_id, SUM(order_details.quantity) as total
FROM suppliers
INNER JOIN products ON suppliers.supplier_id = products.supplier_id
INNER JOIN order_details ON products.product_id = order_details.product_id
GROUP BY suppliers.supplier_id
ORDER BY total DESC
LIMIT 5;

