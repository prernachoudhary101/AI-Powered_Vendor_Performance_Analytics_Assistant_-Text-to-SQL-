CREATE DATABASE vendor_db;
USE vendor_db;

-- Vendors
CREATE TABLE vendors (
    vendor_id INT PRIMARY KEY,
    vendor_name VARCHAR(100),
    location VARCHAR(100)
);

-- Orders
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    vendor_id INT,
    order_date DATE,
    delivery_date DATE,
    quantity INT,
    FOREIGN KEY (vendor_id) REFERENCES vendors(vendor_id)
);

-- Deliveries
CREATE TABLE deliveries (
    delivery_id INT PRIMARY KEY,
    order_id INT,
    actual_delivery_date DATE,
    status VARCHAR(50),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

-- Products
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);

-- Order Items
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO vendors VALUES
(1, 'ABC Corp', 'India'),
(2, 'XYZ Ltd', 'USA'),
(3, 'FastSupply', 'Germany');

INSERT INTO orders VALUES
(101, 1, '2024-01-01', '2024-01-05', 100),
(102, 2, '2024-01-02', '2024-01-06', 200),
(103, 3, '2024-01-03', '2024-01-07', 150);

INSERT INTO deliveries VALUES
(1, 101, '2024-01-06', 'Late'),
(2, 102, '2024-01-05', 'On Time'),
(3, 103, '2024-01-10', 'Late');

DATEDIFF(actual_delivery_date, delivery_date)

RANK() OVER (ORDER BY avg_delay ASC)
