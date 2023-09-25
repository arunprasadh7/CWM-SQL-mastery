-- 2- Subqueries

USE sql_store;

-- Find products that are more expensive than Lettuce (id =3)

SELECT *
FROM products
WHERE unit_price > (
	SELECT 
		unit_price
    FROM products
    WHERE product_id = 3);
    
-- exercise
-- in sql_hr db find all emp who earn more than average

USE sql_hr;

SELECT *
FROM employees
WHERE salary > (
	SELECT AVG(salary) -- 82000
	FROM employees
    );
