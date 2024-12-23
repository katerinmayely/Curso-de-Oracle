SELECT * FROM EMPLEADOS;
SELECT * FROM DEPARTAMENTOS;

-- ASIGNAR A MANUEL LÓPEZ EN EL DEPTO 30
UPDATE EMPLEADOS
SET DEPARTAMENTO_ID = 30
WHERE EMPLEADO_ID = 9;

SELECT * FROM EMPLEADOS WHERE EMPLEADO_ID = 9;

-- ASIGNARLES A ANA RODRIGUEZ Y MANUEL LOPEZ UN SALARIO DE 3000
UPDATE EMPLEADOS
SET SALARIO = 3000
WHERE EMPLEADO_ID = 9 OR EMPLEADO_ID = 11;

SELECT * FROM EMPLEADOS 
WHERE EMPLEADO_ID = 9 OR EMPLEADO_ID = 11;

-- MODIFICAR FECHAS DE CONTRATACIÓN NULL A LA FECHA DE HOY
UPDATE EMPLEADOS 
SET FECHA_CONTRATACION = SYSDATE
WHERE FECHA_CONTRATACION IS NULL;

SELECT * FROM EMPLEADOS WHERE FECHA_CONTRATACION IS NULL;

-- AUMENTO DE SALARIO EN UN 10% AL EMPLEADO QUE GANA MENOS 
SELECT MIN(SALARIO)
FROM EMPLEADOS; -- EL MENOR SALARIO ES 1800

SELECT NOMBRE 
FROM EMPLEADOS
WHERE SALARIO = 1800; -- ELENA CASTILLO GANA 1800

UPDATE EMPLEADOS
SET SALARIO = SALARIO + (SALARIO * 0.1)
WHERE NOMBRE = 'Elena Castillo';

SELECT * FROM EMPLEADOS WHERE NOMBRE = 'Elena Castillo';

-- MODIFICAR EL NOMBRE DE MARTA GOMEZ A MARTA HERNANDEZ
UPDATE EMPLEADOS
SET NOMBRE = 'Marta Hernandez'
WHERE EMPLEADO_ID = 6;
