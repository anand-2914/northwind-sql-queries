
  --11  
   SELECT categories.category_name, AVG(products.unit_price) AS avgs
FROM categories 
INNER JOIN products
ON categories.category_id = products.category_id
GROUP BY  categories.category_name;


