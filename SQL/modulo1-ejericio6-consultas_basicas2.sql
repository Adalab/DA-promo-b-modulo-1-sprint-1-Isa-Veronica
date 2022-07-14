/*Conociendo el tipo de productos que vendemos en Northwind:*/
/*Crea una consulta que muestre los primeros 10 productos según su ID 
y que nos indique el nombre de dichos productos y sus precios.*/

USE northwind;
SELECT product_name, unit_price, product_id
FROM products
ORDER BY product_id ASC 
LIMIT 10;

/* 2.realiza la misma consulta pero que nos muestre los últimos 10 productos según su ID 
de manera descendiente.*/
SELECT product_name, unit_price, product_id
FROM products
ORDER BY product_id DESC
LIMIT 10;

 /* Que pedidos tenemos? qué pedidos distintos hemos tenido 
 (eliminando entradas duplicadas según su ID en la tabla order_details).*/
 SELECT DISTINCT order_id
 FROM order_details;

/*Ej.4.*Los dos primeros pedidos*/
/*limitar los resultados sólo a los 2 primeros pedidos para verlos más en detalle*/
/*en la tabla OrderDetails pueden existir varios registros para cada pedido, 
por lo que no nos servirá con un uso normal del comando LIMIT*/

SELECT DISTINCT *
FROM order_details
ORDER BY order_id
LIMIT 2;

/*Qué pedidos han gastado más*/
/*Una vez hemos inspeccionado el tipo de pedidos que tenemos en la empresa, 
nos piden conocer los 3 pedidos que han supuesto un mayor montante económico total para la empresa. 
Calcúlalo y dale el alias ImporteTotal.*/
SELECT *
FROM 









