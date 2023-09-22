-- 11- Natural Joins
USE sql_store;

SELECT 
	o.order_id,
    c.first_name
FROM orders o
NATURAL JOIN customers c
ORDER BY order_id;