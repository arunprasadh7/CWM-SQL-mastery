-- 10- Subqueries in the FROM Clause
USE sql_invoicing;

SELECT *
FROM (
	SELECT 
		client_id,
		name,
		(SELECT SUM(invoice_total) FROM invoices WHERE client_id = c.client_id) AS total_sales,
		(SELECT AVG(invoice_total) FROM invoices) AS average,
		(SELECT total_sales) - (SELECT average) AS difference
	FROM clients c
    ) AS sales_summary -- alias is must here
    ;
    
    -- select only client with invoice
    SELECT *
    FROM (
		SELECT 
			client_id,
			name,
			(SELECT SUM(invoice_total) FROM invoices WHERE client_id = c.client_id) AS total_sales,
			(SELECT AVG(invoice_total) FROM invoices) AS average,
			(SELECT average) - (SELECT total_sales) AS difference
		FROM clients c) AS summary
        WHERE total_sales IS NOT NULL;