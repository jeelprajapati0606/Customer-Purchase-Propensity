-- products.sql
DROP TABLE IF EXISTS products;

CREATE TABLE products (
    product_id TEXT PRIMARY KEY,
    product_name TEXT NOT NULL,
    category TEXT,
    price INTEGER,
    stock INTEGER
);

INSERT INTO products (product_id, product_name, category, price, stock) VALUES
('P001', 'Earphones', 'Electronics', 499, 120),
('P002', 'Bluetooth Speaker', 'Electronics', 1499, 80),
('P003', 'Smart Watch', 'Electronics', 2499, 60),
('P004', 'Keyboard', 'Accessories', 899, 100),
('P005', 'Headphones', 'Electronics', 1999, 75),
('P006', 'Mouse', 'Accessories', 599, 140),
('P007', 'Power Bank', 'Electronics', 1299, 90),
('P008', 'USB Cable', 'Accessories', 299, 200),
('P009', 'Webcam', 'Electronics', 1799, 50),
('P010', 'Laptop Stand', 'Accessories', 999, 70);