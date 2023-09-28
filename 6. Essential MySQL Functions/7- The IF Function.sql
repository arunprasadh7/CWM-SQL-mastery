-- 7- The IF Function

SELECT 
	order_id,
    order_date,
    IF( YEAR(order_date) = YEAR(NOW()), 'Active', 'Archived' ) AS category
FROM orders;

-- exercise
SELECT DISTINCT
	p.product_id,
    p.name,
    (SELECT COUNT(product_id)
		FROM order_items
        WHERE product_id = p.product_id) AS orders,
	IF( (SELECT orders) =1, 'Once', 'Many times') AS frequency
FROM products p
JOIN order_items oi
	USING(product_id);
    
-- method 2
SELECT 
	p.product_id,
    name,
    COUNT(*) AS orders,
    IF( COUNT(*) >1 , 'Many times', 'Once') AS frequency
FROM products p
JOIN order_items oi USING(product_id)
GROUP BY product_id, name;