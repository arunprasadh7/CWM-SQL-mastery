create database new4;
use new4;

-- Create the products table
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255),
    category VARCHAR(255),
    price DECIMAL(10, 2),
    stock_quantity INT
);

-- Create the orders table
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    product_id INT,
    quantity INT
);

-- Insert sample values into the products table
INSERT INTO products (product_name, category, price, stock_quantity)
VALUES
    ('Smartphone', 'Electronics', 599.99, 10),
    ('Laptop', 'Electronics', 999.99, 5),
    ('T-shirt', 'Clothing', 19.99, 50),
    ('Jeans', 'Clothing', 49.99, 30),
    ('Tablet', 'Electronics', 299.99, 0);

-- Insert sample values into the orders table
INSERT INTO orders (customer_id, order_date, product_id, quantity)
VALUES
    (1, '2023-01-15', 1, 2),
    (2, '2023-02-10', 2, 1),
    (3, '2023-02-20', 1, 3),
    (1, '2023-03-05', 3, 5),
    (4, '2023-01-20', 4, 2),
    (2, '2023-03-10', 1, 1);

SELECT product_id, product_name
FROM products
WHERE category = 'Electronics' AND stock_quantity = 0;

SELECT SUM(p.price * o.quantity) AS total_revenue
FROM products p
INNER JOIN orders o ON p.product_id = o.product_id
WHERE o.order_date BETWEEN '2023-01-01' AND '2023-02-28';


SELECT customer_id, SUM(quantity) AS total_quantity_ordered
FROM orders
GROUP BY customer_id
ORDER BY total_quantity_ordered DESC
LIMIT 5;


UPDATE products
SET price = price * 1.15
WHERE category = 'Clothing';

