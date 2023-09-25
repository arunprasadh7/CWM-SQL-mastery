-- 4- Subqueries vs Joins
use sql_invoicing;
SELECT *
FROM clients
WHERE client_id NOT IN (
	SELECT 
		DISTINCT client_id
	FROM invoices
	);
    
-- we can rewrite the query 
SELECT *
FROM clients c
LEFT JOIN invoices i
	USING(client_id)
WHERE invoice_id IS NULL;

-- exercise 
-- find cx who have ordered lettuce (id=3) 
-- select cx id, first_name, last_name
use sql_store;

SELECT *
FROM customers 
WHERE customer_id IN (
	SELECT DISTINCT
		o.customer_id
	FROM order_items oi
	JOIN orders o USING (order_id)
	WHERE product_id = 3
	);
    
-- method 2

SELECT DISTINCT
	c.customer_id,
    c.first_name,
    c.last_name
FROM customers c 
JOIN orders o USING(customer_id)
JOIN order_items oi USING(order_id)
WHERE oi.product_id = 3;