-- 5- The ALL Keyword

-- select invoices larger than all invoices of client 3

USE sql_invoicing;

SELECT *
FROM invoices
WHERE invoice_total > (
	SELECT MAX(invoice_total)
	FROM invoices
	WHERE client_id = 3
    );
    
-- method 2 using ALL keyword
SELECT *
FROM invoices 
WHERE invoice_total > ALL(
	SELECT invoice_total
	FROM  invoices 
	WHERE client_id = 3
	);