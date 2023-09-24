-- 4- The ROLLUP Operator
USE sql_invoicing;

SELECT
    state,
    city,
	SUM(invoice_total) AS total
FROM invoices i
JOIN clients c USING (client_id)
GROUP BY state,city WITH ROLLUP;

-- exercise
SELECT 
	pm.name AS 'Payment method',
    SUM(amount) AS total
FROM payments p
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id
GROUP by pm.name WITH ROLLUP;