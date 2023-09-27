-- 6- The ANY Keyword

-- select clients with atleast 2 invoices
SELECT * 
FROM clients 
WHERE client_id IN (
	SELECT client_id -- COUNT(*) AS total
	FROM invoices
	GROUP BY client_id
	HAVING COUNT(*) >=2
	);
    
    -- method 2
    SELECT * 
FROM clients 
WHERE client_id = ANY (
	SELECT client_id 
	FROM invoices
	GROUP BY client_id
	HAVING COUNT(*) >=2
	);