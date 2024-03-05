
---34 Find the customers who have ordered products from all categories
SELECT customer_id, COUNT(DISTINCT category_id) AS num_categories
FROM (
    SELECT o.customer_id, p.category_id
    FROM orders o
    INNER JOIN order_details od ON o.order_id = od.order_id
    INNER JOIN products p ON od.product_id = p.product_id
    GROUP BY o.customer_id, p.category_id
) AS customer_cat_ord
GROUP BY customer_id
HAVING COUNT(DISTINCT category_id) = (SELECT COUNT(*) FROM categories);
