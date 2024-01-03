CREATE DATABASE IF NOT EXISTS pizzeria;
USE pizzeria;
CREATE TABLE customers (
  customer_id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  address VARCHAR(60),
  postal_code INT,
  city VARCHAR(30),
  province VARCHAR(30),
  phone_number INT
);
CREATE TABLE orders (
  order_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_id INT REFERENCES customers(customer_id),
  order_date TIMESTAMP,
  delivery_method VARCHAR(50),
  total_price FLOAT
);
CREATE TABLE products (
  product_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30),
  description TEXT,
  image_url VARCHAR(30),
  price FLOAT
);
CREATE TABLE order_items (
  order_item_id INT AUTO_INCREMENT PRIMARY KEY,
  order_id INT REFERENCES orders(order_id),
  product_id INT REFERENCES products(product_id),
  quantity INT,
  subtotal_price FLOAT
);
CREATE TABLE product_categories (
  category_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30)
);
CREATE TABLE product_category_mapping (
  product_id INT REFERENCES products(product_id),
  category_id INT REFERENCES product_categories(category_id),
  PRIMARY KEY (product_id, category_id)
);
CREATE TABLE stores (
  store_id INT AUTO_INCREMENT PRIMARY KEY,
  address VARCHAR(60),
  postal_code INT,
  city VARCHAR(30),
  province VARCHAR(30)
);
CREATE TABLE roles (
  role_id INT AUTO_INCREMENT PRIMARY KEY,
  role_name VARCHAR(50)
);
CREATE TABLE employees (
  employee_id INT AUTO_INCREMENT PRIMARY KEY,
  store_id INT REFERENCES stores(store_id),
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  nif VARCHAR(20),
  phone_number VARCHAR(20),
  role_id INT REFERENCES roles(role_id)
);
CREATE TABLE deliveries (
  delivery_id INT AUTO_INCREMENT PRIMARY KEY,
  order_id INT REFERENCES orders(order_id),
  delivery_person_id INT REFERENCES employees(employee_id),
  delivery_date TIMESTAMP
);