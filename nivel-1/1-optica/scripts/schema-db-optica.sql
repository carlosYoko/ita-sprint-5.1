CREATE DATABASE IF NOT EXISTS optica;
USE optica;
CREATE TABLE suppliers (
    supplier_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30),
    street_address VARCHAR(30),
    street_number INT,
    floor_number INT,
    door_number VARCHAR(2),
    city VARCHAR(30),
    postal_code INT,
    country VARCHAR(20),
    phone INT,
    fax INT,
    nif VARCHAR(20)
);
CREATE TABLE brands (
    brand_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30)
);
CREATE TABLE glasses (
    glasses_id INT AUTO_INCREMENT PRIMARY KEY,
    brand_id INT,
    supplier_id INT,
    graduation VARCHAR(10),
    frame_type VARCHAR(20),
    frame_color VARCHAR(20),
    lens_color VARCHAR(20),
    price FLOAT,
    FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id),
    FOREIGN KEY (brand_id) REFERENCES brands(brand_id)
);
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(60),
    postal_code INT,
    phone INT,
    email VARCHAR(60),
    registration_date DATE,
    referred_by INT,
    FOREIGN KEY (referred_by) REFERENCES customers(customer_id)
);
CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(60)
);
CREATE TABLE sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    customer_id INT,
    glasses_id INT,
    sale_date DATE,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (glasses_id) REFERENCES glasses(glasses_id)
);