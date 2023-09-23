-- 6- Updating a Single Row

SELECT *
FROM invoices;

UPDATE invoices
SET payment_total = 10, payment_date = '2020-01-01'
WHERE invoice_id =1;

UPDATE invoices
SET payment_total = 15, payment_date = '2020-02-02'
WHERE invoice_id = 3;

-- changing them back to original state
UPDATE invoices
SET payment_total = 0, payment_date = null
WHERE invoice_id = 3;

UPDATE invoices
SET payment_total = DEFAULT, payment_date = null
WHERE invoice_id = 1;

--
UPDATE invoices
SET payment_total = invoice_total * 0.5 , payment_date = due_date
WHERE invoice_id =3;