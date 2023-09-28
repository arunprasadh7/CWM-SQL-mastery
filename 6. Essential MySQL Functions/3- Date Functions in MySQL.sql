-- 3- Date Functions in MySQL

SELECT NOW(); -- returns current date and time
SELECT CURDATE(); -- returns only current date
SELECT CURTIME(); -- returns current time

SELECT YEAR(NOW()); -- retunrs only year from now
SELECT MONTH(NOW()); -- returns only month from now
SELECT DAY(NOW()); -- returns day
SELECT HOUR(NOW()); -- returns current hour
SELECT MINUTE(NOW());
SELECT SECOND(NOW());

SELECT DAYNAME(NOW()); -- returns dayname in string
SELECT MONTHNAME(NOW()); -- returns month name in string

SELECT EXTRACT(DAY FROM NOW());
SELECT EXTRACT(MONTH FROM NOW());
SELECT EXTRACT(YEAR FROM NOW());
SELECT EXTRACT(HOUR FROM NOW());

-- exercise

SELECT *
FROM orders
WHERE YEAR(order_date) = YEAR(NOW());