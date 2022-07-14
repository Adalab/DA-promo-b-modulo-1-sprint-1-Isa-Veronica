USE northwind;

/*1. Conociendo a las empleadas:
El objetivo de toda buena jefa (o trabajadora) de una empresa debería ser conocer bien a sus compañeras. 
Para ello, vamos a diseñar una consulta para obtener una lista con los datos de las empleadas y empleados de la empresa Northwind. 
Dicha consulta tiene que tener los campos employee_id, last_name y first_name.*/
SELECT employee_id, last_name, first_name
FROM employees;

/*Conociendo los productos más baratos:
Supongamos que en nuestro primer día en la empresa nos cuentan que la misma se encuentra en un momento de reestructuración de su negocio. 
Nuestras compañeras nos comentan que en estos momentos Northwind tiene demasiados productos a la venta, algunos de ellos con escaso éxito entre las clientas.
Nuestro primer encargo es ver aquellos productos (tabla products) cuyos precios por unidad se encuentren entre los 0 y 5 dólares, es decir, los productos más baratos.*/
SELECT unit_price, product_name FROM products
WHERE unit_price < 5;

/*Conociendo los productos de los que queremos maximizar ventas:
Por otra parte, queremos también conocer los datos de los productos que tengan exactamente un precio de 18, 19 o 20 dólares 
(un rango muy concreto de precios del que la empresa quiere maximizar sus ventas en un futuro).*/
SELECT unit_price, product_name FROM products
WHERE unit_price =20
OR unit_price =19
OR unit_price =18;

/*Conociendo los productos que dan más beneficios.
El rango de productos que puede dar más beneficios a la empresa podría ser el de aquellos con un precio mayor o igual a 15 dólares, 
pero menor o igual que 50 dólares. Selecciona los datos de ese rango de productos.*/
SELECT unit_price, product_name FROM products
WHERE unit_price >=15
AND unit_price <= 50;

/*Conociendo los productos que no tienen precio:
Para comprobar si los datos en la tabla products están correctos, nos interesa seleccionar aquellos productos que no tengan precio, 
porque lo hayan dejado vacio al introducir los datos (NULL).*/
SELECT unit_price, product_name FROM products
WHERE unit_price IS NULL;

/*Comparando productos:
Ahora compara los datos de los productos anteriores con los de aquellos productos con un precio menor a 15 dólares, 
pero sólo aquellos que tienen un ID menor que 10 (para tener una muestra significativa pero no tener que ver todos los productos existentes).*/
SELECT unit_price, product_name, product_id FROM products
WHERE unit_price < 15
AND product_id <10;

/*Cambiando de operadores:
Ahora vamos a hacer la misma consulta que en ejercicio anterior, pero haciendo uso del operador NOT.*/
SELECT unit_price, product_name, product_id FROM products
WHERE unit_price < 15
AND product_id NOT >10;


/*Conociendo los paises a los que vendemos:
A Northwind le interesa conocer los datos de los países que hacen pedidos (orders) para focalizar el negocio en esas regiones 
y al mismo tiempo crear campañas de marketing para conseguir mejorar en las otras regiones. Realiza una consulta para obtener ese dato.*/
SELECT order_id, ship_country, ship_region FROM orders;










