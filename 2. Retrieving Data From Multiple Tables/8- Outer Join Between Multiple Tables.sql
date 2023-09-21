-- 8- Outer Join Between Multiple Tables

SELECT
	c.customer_id,
    c.first_name,
    o.order_id,
    s.name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
LEFT JOIN shippers s ON o.shipper_id = s.shipper_id
ORDER BY c.customer_id;

-- exercise
SELECT 
	o.order_date, 
    o.order_id,
    c.first_name,
    s.name AS shipper,
    os.name
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
LEFT JOIN shippers s ON o.shipper_id = s.shipper_id
JOIN order_statuses os ON o.status = os.order_status_id
ORDER BY o.order_id;
