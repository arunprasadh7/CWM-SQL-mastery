-- 4- Inserting Hierarchical Rows

INSERT INTO orders (customer_id, order_date, status)
VALUES (1, '2019-01-02', 1);

select last_insert_id();

INSERT INTO order_items 
VALUES (LAST_INSERT_ID(), 1, 1, 2.95),
		(last_insert_id(), 2, 1, 3.95); 