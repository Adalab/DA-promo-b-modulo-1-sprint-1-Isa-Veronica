USE `northwind`;

/* 1.Conociendo el tipo de productos que vendemos en Northwind:*/
/*Crea una consulta que muestre los primeros 10 productos según su ID 
y que nos indique el nombre de dichos productos y sus precios.*/

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

 /* 3.Que pedidos tenemos? qué pedidos distintos hemos tenido 
 (eliminando entradas duplicadas según su ID en la tabla order_details).*/
 SELECT DISTINCT order_id
 FROM order_details;

/* 4.Los dos primeros pedidos:
limitar los resultados sólo a los 2 primeros pedidos para verlos más en detalle en la 
tabla OrderDetails pueden existir varios registros para cada pedido, por lo que no nos servirá 
con un uso normal del comando LIMIT*/

SELECT DISTINCT *
FROM order_details
ORDER BY order_id
LIMIT 2;

/* 5.Qué pedidos han gastado más:  Una vez hemos inspeccionado el tipo de pedidos que tenemos 
en la empresa, nos piden conocer los 3 pedidos que han supuesto un mayor montante económico total 
para la empresa. Calcúlalo y dale el alias ImporteTotal.*/

SELECT order_id, unit_price, (unit_price*quantity) AS ImporteTotal /* seleccionamos la columna unit_price y multiplicamos por las unidades para saber el total del pedido*/
FROM order_details
ORDER BY ImporteTotal DESC /* ordenamos en sentido descendente*/
LIMIT 3; /*los pedidos que han gastado más son 10981, 10865,10417*/

/* 6.Los pedidos que están entre las posiciones 5 y 10 de nuestro ranking:
Desde el departamento de Ventas nos piden seleccionar el ID de los pedidos situados 
entre la 5 y la 10 mejor posición en cuanto al coste económico total ImporteTotal*/

SELECT order_id, (unit_price*quantity) AS ImporteTotal /* de la selección anterior*/ 
FROM order_details
ORDER BY ImporteTotal DESC /* ordenamos en descendente*/
LIMIT 10
OFFSET 4; /* seleccionamos las 10 primeras y excluimos 4, para que nos salgan del 5 al 10*/

/* 7.Qué categorías tenemos en nuestra BBDD: De cara a ver cómo de diversificado está el negocio, 
se nos solicita una lista de las categorías que componen los tipos de pedido de la empresa. 
Queremos que la lista de resultado sea renombrada como "NombreDeCategoria"*/

SELECT category_name AS NombreDeCategoria
FROM categories;

/* 8.Selecciona envios con retraso: cumplimiento de las fechas de envío. 
Últimamente se están dando retrasos en muchas entregas y por ello se busca realizar la acción preventiva
 de enviar los paquetes con varios días adicionales de antelacion. 
 Para comenzar a planear esos envíos anticipados, nos piden conocer cuál sería la fecha de envío 
 (ShippedDate) de los pedidos almacenados en la base de datos, si estos sufrieran un retraso de 5 días. 
Nos piden mostrar la nueva fecha renombrada como FechaRetrasada.*/

SELECT order_id, date_add(`required_date`, interval 5 day) AS FechaRetrasada /* encontramos la función de date_add para cuando queremos posponer un evento*/
FROM orders;

/* 9. Selecciona los productos más rentables:
Gracias a un análisis realizado en los últimos meses en la empresa, se ha comprobado que 
el rango de productos que puede dar más beneficios parece ser el de aquellos con un precio mayor o igual 
a 15 dólares, pero menor o igual que 50 dólares. 
Selecciona los datos de ese rango de productos usando el operador BETWEEN*/

SELECT product_id, product_name, unit_price
FROM products
WHERE unit_price BETWEEN 15 AND 50; 

/*Selecciona los productos con unos precios dados:
Queremos conocer los datos de los productos que tengan exactamente un precio de 18, 19 o 20 dólares 
(un rango muy concreto de precios del que la empresa quiere maximizar sus ventas en un futuro). 
Usa IN para conseguirlo de manera eficiente*/

SELECT * 
FROM products
WHERE unit_price IN (18, 19 ,20);



