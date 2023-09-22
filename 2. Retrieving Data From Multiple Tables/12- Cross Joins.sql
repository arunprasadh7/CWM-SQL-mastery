-- 12- Cross Joins

SELECT *
FROM customers c
CROSS JOIN products p
ORDER BY c.customer_id;

SELECT 
	c.first_name AS customer,
    p.name AS product
FROM customers c
CROSS JOIN products p
ORDER BY c.first_name;

-- exercise
	-- implicit
SELECT 
	s.name AS shipper,
    p.name AS product
FROM shippers s, products p
ORDER BY s.name;

	-- explicit
SELECT 
	s.name AS 'Shipper Name',
    p.name AS Product
FROM shippers s
CROSS JOIN products p
ORDER BY s.name;