-- 3- The WHERE Clause
-- comparison operators > >= < <= = != <>
SELECT *
FROM customers 
WHERE points > 3000;

SELECT * 
FROM customers
WHERE state = 'VA';

SELECT * 
FROM customers
WHERE state != 'VA';

SELECT * 
FROM customers
WHERE birth_date > '1990-01-01';


-- exercise
-- get all orders placed this year(2019)

SELECT *
FROM orders
WHERE order_date >= '2019-01-01';