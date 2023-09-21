-- 11- The LIMIT Clause

SELECT *
FROM customers
LIMIT 3;

SELECT *
FROM customers
LIMIT 300;

SELECT * 
FROM customers 
LIMIT 6, 3;

-- exercise
-- get the top three loyal customers
SELECT *
FROM customers
ORDER BY points DESC
LIMIT 3;