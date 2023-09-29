-- 4- THE WITH OPTION CHECK Clause

-- add WITH CHECK OPTION to the invoices_with_balance views
UPDATE invoices_with_balance
SET payment_total = invoice_total
WHERE invoice_id = 3;  -- prevents rows getting removed due to updating