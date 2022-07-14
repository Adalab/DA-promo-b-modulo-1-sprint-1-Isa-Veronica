USE northwind;

SELECT * 
FROM employees
WHERE employee_id IS NOT NULL
AND last_name IS NOT NULL
AND first_name IS NOT NULL;

/* EJERCICIO 1  */

SELECT employee_id, last_name, first_name
FROM employees;

/* EJERCICIO 2  */
SELECT product_name, unit_price
FROM products
WHERE unit_price < 5;

/* EJERCICIO 3*/

SELECT unit_price, product_name FROM products
WHERE unit_price =20
OR unit_price =19
OR unit_price =18; 

/* EJERCICIO 4  */

SELECT unit_price, product_name 
FROM products
WHERE unit_price >= 15 AND <= 50;

/* EJERCICIO 5  */

SELECT unit_price, product_name 
FROM products
WHERE unit_price NOT NULL;

/* EJERCICIO 6  */

SELECT unit_price, product_name 
FROM products
WHERE unit_price < 15
AND product_id < 10;

/* EJERCICIO 7  */

SELECT unit_price, product_name, product_id 
FROM products
WHERE unit_price < 15
AND product_id NOT < 10;




