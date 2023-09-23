-- 2- Inserting a Row

INSERT INTO customers
VALUES (DEFAULT, 'John', 'Smith', '1996-08-07', NULL,'address', 'city', 'CA', DEFAULT);

INSERT INTO customers (first_name, last_name, birth_date, address, city, state)
VALUES ('John', 'Smith', '1996-08-07','address', 'city', 'CA');

