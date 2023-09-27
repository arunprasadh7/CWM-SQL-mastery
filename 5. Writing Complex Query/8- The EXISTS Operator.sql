-- 8- The EXISTS Operator

-- select client that have an invoice
USE sql_invoicing;

-- using IN 
SELECT *
FROM clients
WHERE client_id IN (
	SELECT DISTINCT client_id
	FROM invoices);
    
-- using JOIN 
SELECT DISTINCT
	c.client_id,
    c.name
FROM clients c
JOIN invoices i 
	USING(client_id);
    
-- using EXISTS 
SELECT *
FROM clients c 
WHERE EXISTS ( -- used in case of large date
	SELECT client_id
	FROM invoices 
	WHERE client_id = c.client_id);
    
-- exercise
-- find the products that have never been ordered
USE sql_store;

-- using IN 
SELECT * 
FROM products
WHERE product_id NOT IN (
	SELECT DISTINCT product_id
	FROM order_items
    );

-- using JOIN
SELECT 
	DISTINCT p.product_id,
    p.name
FROM products p 
JOIN order_items oi
	USING (product_id);

-- using EXISTS
SELECT *
FROM products p 
WHERE NOT EXISTS (
	SELECT product_id
    FROM order_items
    WHERE product_id = p.product_id
    );