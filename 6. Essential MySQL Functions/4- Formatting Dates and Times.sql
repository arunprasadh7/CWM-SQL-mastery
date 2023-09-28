-- 4- Formatting Dates and Times

-- DATE FORMAT
SELECT DATE_FORMAT(NOW(), '%y'); -- y 2 digits
SELECT DATE_FORMAT(NOW(), '%Y'); -- Y 4 digits for year

SELECT DATE_FORMAT(NOW(), '%m');
SELECT DATE_FORMAT(NOW(), '%M');

SELECT DATE_FORMAT(NOW(), '%d');
SELECT DATE_FORMAT(NOW(), '%D');

SELECT DATE_FORMAT(NOW(), '%M %D %Y');
SELECT DATE_FORMAT(NOW(), '%m %d %y');

-- TIME FORMAT
SELECT TIME_FORMAT(NOW(), '%H:%i %p');