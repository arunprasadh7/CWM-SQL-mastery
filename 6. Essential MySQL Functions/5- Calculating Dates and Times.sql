-- 5- Calculating Dates and Times

-- ADDING values to date
SELECT DATE_ADD(NOW(), INTERVAL 1 DAY);
SELECT DATE_ADD(NOW(), INTERVAL 1 WEEK);
SELECT DATE_ADD(NOW(), INTERVAL 1 MONTH);
SELECT DATE_ADD(NOW(), INTERVAL 1 YEAR);

-- SUB values to date
SELECT DATE_ADD(NOW(), INTERVAL -1 DAY);
SELECT DATE_ADD(NOW(), INTERVAL -1 WEEK);
SELECT DATE_ADD(NOW(), INTERVAL -1 MONTH);
SELECT DATE_ADD(NOW(), INTERVAL -1 YEAR);

SELECT DATE_SUB(NOW(), INTERVAL 1 DAY);
SELECT DATE_SUB(NOW(), INTERVAL 1 WEEK);
SELECT DATE_SUB(NOW(), INTERVAL 1 MONTH);
SELECT DATE_SUB(NOW(), INTERVAL 1 YEAR);

-- DIFFERENCE between two dates
SELECT DATEDIFF('2023-08-07', NOW()); -- returns diff in days
SELECT DATEDIFF('2023-08-05', '2023-08-01');

-- DIFFERENCE between 2 times
SELECT TIME_TO_SEC('09:00'); -- returns second from mid night
SELECT TIME_TO_SEC('09:00') - TIME_TO_SEC('09:02');