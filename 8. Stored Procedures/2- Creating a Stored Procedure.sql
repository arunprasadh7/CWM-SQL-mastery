-- 2- Creating a Stored Procedure

USE sql_invoicing;

DELIMITER $$
CREATE PROCEDURE get_clients()
BEGIN
	SELECT * FROM clients;
END$$

DELIMITER ;

CALL get_clients(); -- to call the stored procedure in sql code

-- exercise
-- create a stored procedure called invoices_with_balance
-- to return all the invoice with balance > 0

-- method 1 : from scratch
DELIMITER $$
CREATE PROCEDURE invoices_with_balance()
BEGIN
	SELECT 
		invoice_id,
		number,
		client_id,
		invoice_total,
		payment_total,
		(invoice_total - payment_total) AS balance,
		invoice_date,
		due_date,
		payment_date
	FROM invoices
	WHERE invoice_total - payment_total > 0;
END$$

DELIMITER ;

CALL invoices_with_balance();

-- method 2 : making use of already created views

DELIMITER $$
CREATE PROCEDURE invoices_with_balance()
BEGIN
	SELECT *
    FROM invoices_with_balance
    WHERE balance > 0;
END$$
 
DELIMITER ;