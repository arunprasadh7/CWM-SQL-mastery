-- 3- The IN Operator

-- in sql_store find all the products that have never been ordered
USE sql_store;

SELECT *
FROM products
WHERE product_id NOT IN (
	SELECT 
		DISTINCT p.product_id
	FROM products p
	JOIN order_items oi 
		USING(product_id)
        );
        
-- exercise
-- find clients without invoices
use sql_invoicing;
SELECT *
FROM clients
WHERE client_id NOT IN (
	SELECT 
		DISTINCT client_id
	FROM invoices
	);