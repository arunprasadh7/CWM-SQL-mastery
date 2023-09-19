-- 4- The AND, OR and NOT Operators

SELECT * 
FROM customers 
WHERE birth_date > '1990-01-01' AND points > 1000;

SELECT * 
FROM customers 
WHERE birth_date > '1990-01-01' OR points > 1000;

SELECT *
FROM customers 
WHERE birth_date > '1990-01-01' OR points > 1000  AND state = 'VA'; -- order of execution is and, or , not

SELECT *
FROM customers
WHERE NOT (birth_date > '1990-01-01' OR points > 1000);

-- exercise
-- from the order items table get the items 
-- for order #6
-- where total price is greater than 30

SELECT *
FROM order_items
WHERE order_id = 6 AND (quantity * unit_price) > 30;