USE pizzeria;
INSERT INTO roles (role_name)
VALUES ('Cocinero'),
  ('Repartidor');
INSERT INTO stores (address, postal_code, city, province)
VALUES (
    'Calle SQL, 123',
    '08001',
    'Vilanova',
    'Barcelona'
  ),
  (
    'Avenida Mongo, 456',
    '08002',
    'Hospitalet',
    'Barcelona'
  );
INSERT INTO employees (
    store_id,
    first_name,
    last_name,
    nif,
    phone_number,
    role_id
  )
VALUES (
    1,
    'Carlos',
    'García',
    '12345678A',
    '123456789',
    1
  ),
  (2, 'Maria', 'López', '87654321B', '987654321', 2);
INSERT INTO customers (
    first_name,
    last_name,
    address,
    postal_code,
    city,
    province,
    phone_number
  )
VALUES (
    'Juan',
    'Martínez',
    'Calle Node, 456',
    '08003',
    'Castelldefels',
    'Barcelona',
    '654321987'
  ),
  (
    'Carlos',
    'Gimenez',
    'Calle React, 346',
    '08004',
    'Gava',
    'Barcelona',
    '456321987'
  ),
  (
    'Laura',
    'Fernández',
    'Avenida Express, 789',
    '08004',
    'Gava',
    'Barcelona',
    '789654321'
  );
INSERT INTO product_categories (name)
VALUES ('Pizza'),
  ('Hamburgesa'),
  ('Bebida');
INSERT INTO products (name, description, image_url, price)
VALUES (
    'Pizza Trufada',
    'Clasica pizza con trufa',
    'trufaza.jpg',
    9.99
  ),
  (
    'Cheeseburger',
    'Clasica hamburguesa con queso',
    'cheeseburger.jpg',
    5.99
  ),
  (
    'Coca-Cola',
    'Coca-cola de toda la vida',
    'cola.jpg',
    1.99
  );
INSERT INTO product_category_mapping (product_id, category_id)
VALUES (1, 1),
  (2, 2),
  (3, 3);
INSERT INTO orders (
    customer_id,
    order_date,
    delivery_method,
    total_price
  )
VALUES (1, NOW(), 'domicilio', 15.98),
  (2, NOW(), 'recogida', 7.99),
  (3, NOW(), 'recogida', 3.98);
INSERT INTO order_items (order_id, product_id, quantity, subtotal_price)
VALUES (1, 1, 2, 19.98),
  (2, 3, 3, 5.97),
  (3, 3, 2, 3.98);
INSERT INTO deliveries (order_id, delivery_person_id, delivery_date)
VALUES (1, 1, NOW()),
  (2, 2, NOW()),
  (3, 2, NOW());