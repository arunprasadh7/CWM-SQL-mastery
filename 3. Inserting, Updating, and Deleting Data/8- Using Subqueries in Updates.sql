-- 8- Using Subqueries in Updates
USE sql_invoicing;

UPDATE invoices
SET 
	payment_total = invoice_total * 0.5,
    payment_date = due_date
WHERE client_id =
	(SELECT client_id
	FROM clients
	WHERE name = 'myworks');
    
-- 
UPDATE invoices
SET 
	payment_total = invoice_total * 0.5,
    payment_date = due_date
WHERE client_id IN
	(SELECT client_id
	FROM clients
	WHERE state IN ('NY','CA')
    );
    
-- exercise
USE sql_store;
UPDATE orders
SET comments = 'Gold Customer'
WHERE customer_id IN
	(SELECT customer_id
	FROM customers
	WHERE points > 3000);