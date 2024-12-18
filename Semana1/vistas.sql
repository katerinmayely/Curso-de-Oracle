SELECT * FROM EMPLEADOS;

UPDATE EMPLEADOS SET DEPARTAMENTO_ID = 40 WHERE DEPARTAMENTO_ID IS NULL;

-- EMPLEADOS QUE ESTÁN EN EL DEPARTAMENTO 10
SELECT NOMBRE_COMPLETO, DEPARTAMENTO_ID, EMPLEADO_ID
FROM EMPLEADOS 
WHERE DEPARTAMENTO_ID = 10;

-- CREAR VISTA
CREATE VIEW EMPLEADOS_DEP_10 AS
    SELECT NOMBRE_COMPLETO, DEPARTAMENTO_ID, EMPLEADO_ID
    FROM EMPLEADOS 
    WHERE DEPARTAMENTO_ID = 10;

-- CONSULTAR A LA VISTA
SELECT * FROM EMPLEADOS_DEP_10;

-- ACTUALIZAR LA VISTA
CREATE OR REPLACE VIEW EMPLEADOS_DEP_10 AS
    SELECT NOMBRE_COMPLETO AS EMPLEADO, NOMBRE AS DEPARTAMENTO
    FROM EMPLEADOS E INNER JOIN DEPARTAMENTOS D ON E.DEPARTAMENTO_ID = D.DEPARTAMENTO_ID
    WHERE E.DEPARTAMENTO_ID = 10;
     
SELECT NOMBRE_COMPLETO AS EMPLEADO, NOMBRE AS DEPARTAMENTO
FROM EMPLEADOS E INNER JOIN DEPARTAMENTOS D ON E.DEPARTAMENTO_ID = D.DEPARTAMENTO_ID
WHERE E.DEPARTAMENTO_ID = 10;

-- ELIMINAR UNA VISTA
DROP VIEW EMPLEADOS_DEP_10;

----------------------- CANTIDAD DE EMPLEADOS EN CADA DEPTO
SELECT DEPARTAMENTO_ID, COUNT(*) AS EMPLEADOS
FROM EMPLEADOS 
GROUP BY DEPARTAMENTO_ID;

CREATE OR REPLACE VIEW CANT_EMPLEADOS_X_DEPTO AS
    SELECT DEPARTAMENTO_ID, COUNT(*) AS EMPLEADOS
    FROM EMPLEADOS 
    GROUP BY DEPARTAMENTO_ID;
    
SELECT * FROM CANT_EMPLEADOS_X_DEPTO;