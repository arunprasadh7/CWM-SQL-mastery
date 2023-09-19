-- 2- The SELECT Clause

SELECT first_name, last_name
FROM customers;

SELECT last_name, first_name
FROM customers;

SELECT last_name, first_name, points, points + 10
FROM customers;

SELECT last_name, first_name, points, points * 10 + 100
FROM customers;

SELECT 
	last_name,
    first_name,
    points,
    (points + 10) * 100 AS 'discount factor'
FROM customers;

select * from customers;

SELECT DISTINCT state 
FROM customers;

-- exercise
-- return all products
-- name
-- unit price
-- new_price (unit price * 1.1)

SELECT * FROM products;

SELECT name, unit_price, (unit_price * 1.1) AS 'new price'
FROM products;