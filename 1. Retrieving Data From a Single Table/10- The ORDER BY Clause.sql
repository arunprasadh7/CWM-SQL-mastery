-- 10- The ORDER BY Clause

SELECT *
FROM customers 
ORDER BY first_name;

SELECT * 
FROM customers
ORDER BY first_name DESC; -- descending order

SELECT *
FROM customers
ORDER BY state, first_name;

SELECT *
FROM customers
ORDER BY state DESC, first_name;

SELECT first_name, last_name
FROM customers
ORDER BY  birth_date;

SELECT first_name, last_name
FROM customers
ORDER BY 1; -- 1 denotes first name

SELECT first_name, last_name
FROM customers
ORDER BY 1,2;

-- exercise
SELECT order_id, product_id, quantity, unit_price, (quantity*unit_price) AS total_price
FROM order_items
WHERE order_id = 2
ORDER BY total_price DESC;

SELECT *, (quantity*unit_price) AS total_price
FROM order_items
WHERE order_id = 2
ORDER BY total_price DESC;
