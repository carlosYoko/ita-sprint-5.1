USE pizzeria;
-- Consulta para sumar la cantidad de productos de tipo "Bebida" vendidos en la localidad de Gava
SELECT c.city AS ciudad,
    SUM(oi.quantity) AS cantidad_bebidas_vendidas
FROM order_items oi
    JOIN orders o ON oi.order_id = o.order_id
    JOIN customers c ON o.customer_id = c.customer_id
WHERE c.city = 'Gava'
    AND oi.product_id = 3
GROUP BY c.city;
-- Consulta para ver las ventas realizadas por un empleado específico
SELECT e.employee_id,
    e.first_name,
    COUNT(o.order_id) AS cantidad_pedidos
FROM orders o
    JOIN deliveries d ON o.order_id = d.order_id
    JOIN employees e ON d.delivery_person_id = e.employee_id
WHERE d.delivery_person_id = 2
GROUP BY e.employee_id,
    e.first_name;