-- 3- The HAVING Clause

SELECT 
	client_id,
	SUM(invoice_total) AS total_sales
FROM invoices
GROUP BY client_id
HAVING total_sales > 500;

--
SELECT 
	client_id,
	SUM(invoice_total) AS total_sales,
    COUNT(*) AS number_of_invoices
FROM invoices
GROUP BY client_id
HAVING total_sales > 500 AND number_of_invoices > 5;

-- exercise
USE sql_store;

SELECT
	c.customer_id,
    c.first_name,
    c.last_name,
    c.state,
    SUM(oi.quantity * oi.unit_price) AS total_sales
FROM customers c
JOIN orders o USING(customer_id)
JOIN order_items oi ON o.order_id = oi.order_id
WHERE state = 'VA'
GROUP BY  c.customer_id,
		  c.first_name,
          c.last_name,
          c.state
HAVING total_sales > 100;