-- 5- Creating a Copy of a Table

-- creating a new table 
CREATE TABLE orders_archived AS
SELECT * FROM orders;

SELECT * 
FROM orders
WHERE order_date < '2019-01-01';


-- inserting a sub query 
INSERT INTO orders_archived
SELECT * 
FROM orders
WHERE order_date < '2019-01-01';


-- exercise
USE sql_invoicing;

CREATE TABLE invoice_archived AS
SELECT 
	i.invoice_id,
    c.name AS client,
    i.number AS phone,    
    i.invoice_total,
    i.payment_total,
    i.invoice_date,
    i.due_date,
    i.payment_date
FROM invoices i
JOIN clients c 
	USING (client_id)
WHERE i.payment_date IS NOT NULL
ORDER BY invoice_id;