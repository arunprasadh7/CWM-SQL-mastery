-- 4- Joining Multiple Tables

USE sql_store;

SELECT *
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN order_statuses os ON o.status = os.order_status_id;

SELECT o.order_id, o.order_date, c.first_name, c.last_name, os.name AS 'status'
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN order_statuses os ON o.status = os.order_status_id;

-- exercise
USE sql_invoicing;

SELECT p.payment_id, c.name AS 'client name', pm.name AS 'Mode of Payment'
FROM payments p 
JOIN clients c ON p.client_id = c.client_id
JOIN payment_methods pm ON p.payment_method = pm.payment_method_id;