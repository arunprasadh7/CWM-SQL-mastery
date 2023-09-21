-- 10- The USING Clause
USE sql_store;

SELECT 
	o.order_id,
    c.first_name,
FROM orders o
JOIN customers c 
ON o.customer_id = c.customer_id;

SELECT 
	o.order_id,
    c.first_name,
    s.shipper_id AS shipper
FROM orders o
JOIN customers c
-- ON o.customer_id = c.customer_id;
USING (customer_id) -- this is same as above statement
LEFT JOIN shippers s 
USING (shipper_id);

SELECT *
FROM order_items oi
JOIN order_item_notes oin 
	ON oi.order_id = oin.order_id
    AND oi.product_id = oin.product_id;
    
-- rewriting the above with USING keyword
SELECT *
FROM order_items oi
JOIN order_item_notes oin 
	USING (order_id, product_id);
    
-- exercise
USE sql_invoicing;

SELECT 
	p.date,
    p.amount,
    c.name,
    pm.name AS 'Mode of Payment'
FROM payments p
JOIN clients c 
	USING (client_id)
JOIN payment_methods pm 
	ON p.payment_method = pm.payment_method_id;