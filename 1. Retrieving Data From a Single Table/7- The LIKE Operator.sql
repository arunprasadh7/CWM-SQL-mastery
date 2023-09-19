-- 7- The LIKE Operator

-- % any number of char
SELECT * 
FROM customers 
WHERE last_name LIKE 'B%';

SELECT * 
FROM customers 
WHERE last_name LIKE 'brush%';

SELECT * 
FROM customers 
WHERE last_name LIKE '%b%';

SELECT * 
FROM customers 
WHERE last_name LIKE '%y';

-- _ single char

SELECT * 
FROM customers 
WHERE last_name LIKE '_____y';

SELECT * 
FROM customers 
WHERE last_name LIKE 'b____y';

-- exercise
-- get the cx whose address contain trail or avenue , phone no ends with 9 

SELECT * 
FROM customers
WHERE address LIKE '%trail%' OR address LIKE '%avenue%';

SELECT *
FROM customers
WHERE phone LIKE '%9';