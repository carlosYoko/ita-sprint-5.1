USE optica;
INSERT INTO suppliers (
        name,
        street_address,
        street_number,
        floor_number,
        door_number,
        city,
        postal_code,
        country,
        phone,
        fax,
        nif
    )
VALUES (
        'Optica Catalana',
        'Calle SQL',
        123,
        1,
        'A',
        'Barcelona',
        08000,
        'España',
        123456789,
        789123456,
        '4563345X'
    ),
    (
        'Optica Universitaria',
        'Calle Node',
        456,
        2,
        'B',
        'Madrid',
        12300,
        'España',
        987654321,
        321654987,
        '9387251Y'
    ),
    (
        'German Optical',
        'Calle Express',
        789,
        3,
        'C',
        'Berlin',
        54321,
        'Germany',
        111222333,
        333222111,
        '2983749Z'
    ),
    (
        'British Optical',
        'Calle Mongo',
        101,
        4,
        'D',
        'Londres',
        13579,
        'UK',
        444555666,
        666555444,
        '1092837W'
    );
INSERT INTO brands (name)
VALUES ('React'),
    ('Angular'),
    ('Vue'),
    ('Next'),
    ('Vite');
INSERT INTO glasses (
        brand_id,
        supplier_id,
        graduation,
        frame_type,
        frame_color,
        lens_color,
        price
    )
VALUES (1, 1, 'Low', 'Plastic', 'Black', 'Blue', 100.00),
    (2, 2, 'High', 'Floating', 'Red', 'Green', 150.00),
    (
        3,
        3,
        'Low',
        'Plastic',
        'White',
        'Yellow',
        120.00
    ),
    (
        2,
        4,
        'High',
        'Metallic',
        'Gray',
        'Orange',
        180.00
    ),
    (
        2,
        1,
        'Medium',
        'Metallic',
        'Brown',
        'Pink',
        130.00
    );
INSERT INTO customers (
        name,
        postal_code,
        phone,
        email,
        registration_date,
        referred_by
    )
VALUES (
        'Carlos',
        54321,
        111222333,
        'carlos@gmail.com',
        '2023-01-01',
        NULL
    ),
    (
        'Juan',
        67890,
        444555666,
        'juan@gmail.com',
        '2023-02-01',
        1
    ),
    (
        'Irina',
        12345,
        777888999,
        'irina@gmail.com',
        '2023-03-01',
        2
    ),
    (
        'Lucian',
        10111,
        000111222,
        'lucian@gmail.com',
        '2023-04-01',
        3
    ),
    (
        'Solida',
        13579,
        333444555,
        'solida@gmail.com',
        '2023-05-01',
        4
    );
INSERT INTO employees (name)
VALUES ('Paco'),
    ('Paca'),
    ('Pepe'),
    ('Pepa');
INSERT INTO sales (employee_id, customer_id, glasses_id, sale_date)
VALUES (1, 1, 1, '2023-01-15'),
    (1, 2, 3, '2023-04-15'),
    (2, 2, 4, '2023-02-15'),
    (2, 2, 2, '2023-04-15'),
    (3, 3, 3, '2023-12-15'),
    (4, 4, 4, '2023-09-15'),
    (2, 1, 5, '2023-12-15');