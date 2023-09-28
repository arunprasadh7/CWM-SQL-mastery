-- 1- Numeric Functions

-- ROUND - round number to closest whole value
SELECT ROUND(5.73);
SELECT ROUND(5.2);
SELECT ROUND(5.73,1); -- precision 1
SELECT ROUND(5.7345,2); -- precision 2

-- TRUNCATE - shortens the number to defined precision
SELECT TRUNCATE(5.7345,2);

-- CEILING - returns next highest int
SELECT CEILING(5.7);
SELECT CEILING(5.2);

-- FLOOR - returns lowest num
SELECT FLOOR(5.2);
SELECT FLOOR(5.745);

-- ABS - returns positive number
SELECT ABS(-5);

-- RAND - random value
SELECT RAND();