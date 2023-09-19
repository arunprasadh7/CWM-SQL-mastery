-- 8- The REGEXP Operator
-- ^ represent beginning of string
-- $ ending of string
-- | logical OR
-- [abc] single char
-- [a-h] represents range
SELECT *
FROM customers 
-- WHERE last_name LIKE '%field%';
WHERE last_name REGEXP 'field';

SELECT *
FROM customers
WHERE last_name REGEXP '^field';

SELECT *
FROM customers
WHERE last_name REGEXP 'field$'; -- $ denotes ending

SELECT *
FROM customers
WHERE last_name REGEXP 'field|mac'; -- | denotes OR

SELECT *
FROM customers
WHERE last_name REGEXP 'field|mac|rose';

SELECT *
FROM customers
WHERE last_name REGEXP 'dell$';

SELECT *
FROM customers 
WHERE last_name REGEXP '[gim]e';

SELECT *
FROM customers
WHERE last_name REGEXP '[cgs]h';

SELECT *
FROM customers
WHERE last_name REGEXP '[a-h]e';

-- exercise
-- get cx whose first names are ELKA or AMBUR
SELECT *
FROM customers
WHERE first_name REGEXP 'elka|ambur';

-- last name ends with EY or ON
SELECT *
FROM customers 
WHERE last_name REGEXP 'ey$|on$';

-- last name starts with MY or contains SE
SELECT *
FROM customers
WHERE last_name REGEXP '^my|se';

-- last name contains B followed by R or U
SELECT *
FROM customers
WHERE last_name REGEXP 'b[ru]';

SELECT *
FROM customers
WHERE last_name REGEXP 'br|bu';