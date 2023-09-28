-- 6- The IFNULL and COALESCE Functions 
USE sql_store;
-- IFNULL
SELECT 
	order_id,
    IFNULL(shipper_id, 'Not Assigned') AS shipper -- null value will be replaces by not assigned
FROM orders;

-- COALESCE
SELECT 
	order_id,
    COALESCE(shipper_id, comments, 'Not Assigned') AS shipper -- id shipper_id is null retuns comments , if both null returns provided value
FROM orders;