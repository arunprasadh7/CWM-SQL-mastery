-- 2- String Functions

-- LENGTH
SELECT LENGTH('arun');

-- UPPER 
SELECT UPPER('arun');

-- LOWER
SELECT LOWER('ARUN');

-- TRIMMING SPACES
SELECT LTRIM('     arun');
SELECT RTRIM('arun      ');
SELECT TRIM('         ARUN            ');

-- LEFT , RIGHT, SUBSTRING
SELECT LEFT('ArunPrasadh', 4); -- returns first 4 chars from left
SELECT RIGHT('ArunPrasadh',2); -- retuns last 2 chars from right
SELECT SUBSTRING('ArunPrasadh', 2); -- starts at 2 and returns till end
SELECT SUBSTRING('ArunPrasadh', 2,5); -- starts at index 2 and picks 5 chars 

-- LOCATE
SELECT LOCATE('n', 'Arun Prasadh'); -- returns the index of first occurence of n
SELECT LOCATE('x', 'Arun'); -- returns 0 if char is not in the string

-- REPLACE
SELECT REPLACE('Kindergarten', 'garten', 'garden'); -- replaces garten with garden

-- CONCAT 
SELECT CONCAT('Arun',' ','Prasadh');