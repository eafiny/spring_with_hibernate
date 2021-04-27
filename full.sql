BEGIN;

DROP TABLE IF EXISTS products1 CASCADE;
CREATE TABLE products1 (id bigserial PRIMARY KEY, title VARCHAR(255), price int, category_id bigint REFERENCES categories (id));
INSERT INTO products1 (title, price, category_id) VALUES
('Bread', 25, 1),
('Jeans', 5000, 2),
('Milk', 80, 1);

DROP TABLE IF EXISTS categories CASCADE;
CREATE TABLE categories (id bigserial PRIMARY KEY, title VARCHAR(255));
INSERT INTO categories (title) VALUES
('Food'),
('Clothes');

COMMIT;