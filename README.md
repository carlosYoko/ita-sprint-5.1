# Estructura de datos MySQL

Desarrollo de estructuras de bases de datos donde se abordan conceptos y prácticas relacionadas con MySQL para el diseño y el manejo de bases de datos relacionales.

##### Trabajo del Sprint 5.1 de IT-Academy en la especialización de Node.js.

> [!IMPORTANT]  
> Si ya existe una base de datos con el mismo nombre, se recomienda cambiar el nombre de la base de datos en los scripts (schema, inserts, querys) o eliminar la base de datos existente.

## Nivel 1 - Óptica

El repositorio modela la gestión de una óptica. Aquí se resumen los puntos clave:

| **Entidades** | **Atributos Destacados**                                                                                                         |
| ------------- | -------------------------------------------------------------------------------------------------------------------------------- |
| Proveedores   | Nombre, dirección, teléfono, fax, NIF.                                                                                           |
| Gafas         | Marca, graduación, tipo de muntura, color de muntura y vidrios, precio.                                                          |
| Clientes      | Nombre, dirección, teléfono, correo electrónico, fecha de registro. Al registrar un nuevo cliente, almacenar quién lo recomendó. |
| Ventas        | Registrar el empleado que realizó la venta y definir un período de tiempo.                                                       |

### Queries de verificación Optica:

1. Lista el total de compras de un cliente.
2. Lista las diferentes gafas que ha vendido un empleado durante un año.
3. Lista los diferentes proveedores que han suministrado gafas vendidas con éxito para la óptica.

> [!NOTE]
> Para realizar estas verificaciones, puedes encontrar los scripts de los queries en el directorio [nivel-1/1-optica/scripts](./nivel-1/1-optica/scripts). Consulta estos scripts para verificar que el diseño es correcto.

## Nivel 1 - Pizzería

Este nivel se enfoca en el diseño de una web para pedidos de una pizzeria. Puntos destacados:

| **Entidades**        | **Atributos Destacados**                                                  |
| -------------------- | ------------------------------------------------------------------------- |
| Clientes             | Nombre, dirección, código postal, teléfono.                               |
| Pedidos              | Fecha/hora, tipo de entrega, cantidad y tipos de productos, precio total. |
| Productos            | Pizzas, hamburguesas, bebidas.                                            |
| Categorías de Pizzas | Identificador único y nombre.                                             |
| Empleados            | Nombre, apellidos, NIF, teléfono, rol (cuiner/a o repartidor/a).          |

### Queries de verificación Pizzería:

1. Lista cuántos productos de tipo "Bebidas" se han vendido en una determinada localidad.
2. Lista cuántas órdenes ha realizado un determinado empleado.

> [!NOTE]
> Para realizar estas verificaciones, puedes encontrar los scripts de los queries en el directorio [nivel-1/2-pizzeria/scripts](./nivel-1/2-pizzeria/scripts). Consulta estos scripts para verificar que el diseño es correcto.

## Nivel 2 - YouTube

Este nivel representa una versión reducida de YouTube con las siguientes características:

| **Entidades**          | **Atributos Destacados**                                                                                        |
| ---------------------- | --------------------------------------------------------------------------------------------------------------- |
| Usuarios               | Email, contraseña, nombre de usuario, fecha de nacimiento, sexo, país, código postal.                           |
| Vídeos                 | Título, descripción, tamaño, nombre del archivo de vídeo, duración, thumbnail, reproducciones, likes, dislikes. |
| Canales                | Nombre, descripción, fecha de creación.                                                                         |
| Listas de Reproducción | Nombre, fecha de creación, estado (pública o privada).                                                          |

## Nivel 3 - Spotify

Este nivel representa la base de datos necesaria para Spotify con usuarios free y premium:

| **Entidades**            | **Atributos Destacados**                                                              |
| ------------------------ | ------------------------------------------------------------------------------------- |
| Usuarios                 | Email, contraseña, nombre de usuario, fecha de nacimiento, sexo, país, código postal. |
| Subscripciones Premium   | Fecha de inicio, fecha de renovación, forma de pago.                                  |
| Targetas de Crédito      | Número, mes y año de caducidad, código de seguridad.                                  |
| Playlists                | Título, número de canciones, fecha de creación, estado (activa o eliminada).          |
| Canciones                | Título, duración, reproducciones.                                                     |
| Álbumes y Artistas       | Identificadores únicos, nombres, imágenes.                                            |
| Seguimientos y Favoritos | Seguimientos de artistas, álbumes y canciones.                                        |

## Licencia

Este proyecto está bajo la Licencia MIT - consulta el archivo [LICENSE.md](./LICENSE.md) para más detalles.
