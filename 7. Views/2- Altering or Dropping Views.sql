-- 2- Altering or Dropping Views

-- Method 1 - to drop and recreate the view
DROP VIEW sales_by_client;

-- 
CREATE OR REPLACE VIEW sales_by_client AS 
SELECT 
	c.client_id,
    c.name,
    SUM(invoice_total) AS total_sales
FROM clients c
JOIN invoices i 
	USING(client_id)
GROUP BY c.client_id, name;