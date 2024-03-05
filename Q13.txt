
 --14 Find the most expensive product in each category

SELECT products.product_name,categories.category_name, products.unit_price
FROM products
INNER JOIN categories  ON products.category_id = categories.category_id
WHERE products.unit_price = (
    SELECT MAX(unit_price)
    FROM products
    WHERE products.category_id = categories.category_id
)
ORDER BY unit_price DESC;
