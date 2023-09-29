-- 1- Creating Views - views behave like a virtual table

USE sql_invoicing;

CREATE VIEW sales_by_client AS 
SELECT 
	c.client_id,
    c.name,
    SUM(invoice_total) AS total_sales
FROM clients c
JOIN invoices i 
	USING(client_id)
GROUP BY c.client_id, name;

-- using views
SELECT *
FROM sales_by_client
ORDER BY total_sales DESC;

SELECT *
FROM sales_by_client
WHERE total_sales > 500;

SELECT *
FROM sales_by_client
JOIN clients c 
	USING(client_id);
    
-- exercise
-- create a view to see the balance for each client named clients_balance 
-- with columns client_id, name, balance

CREATE VIEW clients_balance AS
SELECT 
	c.client_id,
    c.name,
    SUM(invoice_total - payment_total) AS balance
FROM clients c
JOIN invoices i
	USING(client_id)
GROUP BY client_id, name;