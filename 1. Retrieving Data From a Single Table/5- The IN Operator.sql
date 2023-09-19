-- 5- The IN Operator

SELECT * 
FROM customers
WHERE state IN ('VA', 'GA', 'FL');

SELECT * 
FROM customers
WHERE state NOT IN ('VA', 'GA', 'FL');

-- exercise
-- return products with qty in stock equal to 49 , 38, 72
SELECT * 
FROM products
WHERE quantity_in_stock IN (38, 49, 72);