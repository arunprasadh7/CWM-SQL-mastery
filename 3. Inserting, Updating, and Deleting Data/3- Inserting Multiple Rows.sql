-- 3- Inserting Multiple Rows

INSERT INTO shippers (name)
VALUES ('Shipper1'),
	('Shipper2'),
    ('Shipper3');
    
-- exercise
-- insert 3 rows in the products table

INSERT INTO products (name, quantity_in_stock, unit_price)
VALUES  ('name1', 10, 5.55),
		('name2', 20, 10.99),
        ('name3', 30, 30.33);
        
select * from products;