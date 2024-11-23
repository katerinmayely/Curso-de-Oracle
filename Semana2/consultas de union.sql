SELECT * FROM VENTAS;

-- UNION 
-- CONBINAR REGIONES EN QUE SE VENDIERON LAPTOPS Y EN LAS QUE SE VENDIERON TELEFONOS - SIN DUPLICAR
SELECT REGION 
FROM VENTAS
WHERE PRODUCTO = 'Laptop'
UNION
SELECT REGION 
FROM VENTAS
WHERE PRODUCTO = 'Teléfono';

-- UNION ALL
-- CONBINAR REGIONES EN QUE SE VENDIERON LAPTOPS Y EN LAS QUE SE VENDIERON TELEFONOS - SIN IMPORTAR DUPLICADOS
SELECT REGION 
FROM VENTAS
WHERE PRODUCTO = 'Laptop'
UNION ALL
SELECT REGION 
FROM VENTAS
WHERE PRODUCTO = 'Teléfono';

-- INTERSECT
-- REGIONES QUE VENDEN TANTO TELEFONOS COMO LAPTOPS
SELECT REGION 
FROM VENTAS
WHERE PRODUCTO = 'Laptop'
UNION ALL
SELECT REGION 
FROM VENTAS
WHERE PRODUCTO = 'Teléfono';

-- MINUS
-- REGIONES QUE VENDEN LAPTOPS ELEFONOS PERO NO TELEFONOS
SELECT REGION 
FROM VENTAS
WHERE PRODUCTO = 'Laptop'
MINUS
SELECT REGION 
FROM VENTAS
WHERE PRODUCTO = 'Teléfono';

-- REGIONES QUE NO VENDAN LAPTOPS
SELECT REGION
FROM VENTAS
MINUS
SELECT REGION 
FROM VENTAS
WHERE PRODUCTO = 'Laptop'