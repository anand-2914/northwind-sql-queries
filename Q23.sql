
--23  Find the most common shipping country
SELECT ship_country,COUNT(ship_country)AS country_name from orders 
group by ship_country
 ORDER BY country_name DESC
  limit 1;
