-- 9- Subqueries in the SELECT Clause
USE sql_invoicing;

SELECT 
	invoice_id,
    invoice_total,
    (SELECT AVG(invoice_total) FROM invoices) AS invoice_average,
    invoice_total - (SELECT invoice_average) AS difference
FROM invoices;

-- exercise
SELECT 
	client_id,
    name,
    (SELECT SUM(invoice_total)
		FROM invoices 
        WHERE client_id = c.client_id) AS total_sales,
	(SELECT AVG(invoice_total)
		FROM invoices) AS average,
	(SELECT total_sales) - (SELECT average) AS difference
FROM clients c;