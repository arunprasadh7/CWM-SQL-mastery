-- 3- Updatable Views
-- views can also be used in INSERT, UPDATE & DELETE
-- based on the following conditions, views must no have
-- distinct
-- aggregate functions (MIN, MAX, SUM) etc
-- GROUP BY / HAVING 
-- UNION 

CREATE OR REPLACE VIEW invoices_with_balance AS 
SELECT 
	invoice_id,
    number,
    client_id,
    invoice_total,
    payment_total,
    invoice_total - payment_total AS balance,
    invoice_date,
    due_date,
    payment_date
FROM invoices
WHERE (invoice_total - payment_total) > 0;

-- deleting invoice id =1 from views
DELETE FROM invoices_with_balance
WHERE invoice_id = 1;

-- pushing due date of invoice id 2 to two days
UPDATE invoices_with_balance
SET due_date = DATE_ADD(due_date, INTERVAL 2 DAY)
WHERE invoice_id = 2;