-- 9- The IS NULL Operator

SELECT *
FROM customers
WHERE phone IS NULL;

-- exercise 
SELECT *
FROM orders
WHERE shipped_date IS NULL;