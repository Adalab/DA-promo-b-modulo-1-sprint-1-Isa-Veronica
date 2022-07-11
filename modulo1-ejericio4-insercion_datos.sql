INSERT INTO zapatillas (modelo, color, marca, talla)
VALUES ('XQYUN', 'negro', 'Nike', 42),
		('UOPMN', 'rosas', 'Nike', 39),
        ('OPNYT', 'verdes', 'Adidas', 35);
        
 
 INSERT INTO empleados (nombre, tienda, salario, fecha_incorporacion)
VALUES ('Laura', 'Alcobendas', 25987, '2010-09-03'),
		('María', 'Sevilla', 0, '2001-04-11'),
        ('Ester', 'Oviedo', 30165.98, '2000-11-29');
        
INSERT INTO clientes (nombre, numero_telefono, email, direccion, ciudad, provincia, codigo_postal)
VALUES ('Monica', 1234567289, 'monica@email.com', 'Calle Felicidad', 'Mostoloes', 'Madrid', 28176),
		('Lorena', 289345678, 'lorena@email.com', 'Calle Alegria', 'Barcelona', 'Barcelona', 12346),
        ('Carmen', 298463759, 'carmen@email.com', 'Calle del Color', 'Vigo', 'Pontevedra', 23456);
        
INSERT INTO facturas (numero_factura, fecha, id_zapatillas, id_empleados, id_cliente)
VALUES (123, "2001-11-12", 1, 10, 1),
		(1234, "2005-05-23", 1, 11, 2),
        (12345, '2015-09-18', 1, 12, 3);
        
UPDATE zapatillas
SET color = 'amarillas'
WHERE modelo = 'UOPMN'; 
        
UPDATE empleados
SET tienda = 'Alcobendas'
WHERE nombre = 'Lorena';

UPDATE clientes
SET numero_telefono = 123456728
WHERE nombre = 'Monica';

UPDATE facturas
SET numero_factura = 89.91
WHERE id_zapatillas = 2;









        
        
        

        

        
