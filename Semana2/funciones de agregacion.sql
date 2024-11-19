-- COUNT(*) COUNT(NOMBRE_COLUMNA)
-- CUAL ES LA CATIDAD DE EMPLEADOS QUE HAY
SELECT COUNT(*) AS CANT_EMPLEADOS
FROM EMPLEADOS;

-- CUAL ES LA CANTIDAD DE DEPARTAMENTOS QUE TIENE LA EMPRESA
SELECT COUNT(*) AS CANT_DEPTOS
FROM DEPARTAMENTOS;

-- SUM(NOMBRE_COLUMNA)
-- SUMAR LOS SALARIOS DE TODOS LOS EMPLEADOS
SELECT SUM(SALARIO) AS TOTAL_SALARIOS
FROM EMPLEADOS;

-- AVG(NOMBRE_COLUMNA)
-- CUAL ES EL SALARIO PROMEDIO
SELECT TRUNC( AVG(SALARIO), 2 ) AS PROMEDIO_SALARIOS
FROM EMPLEADOS;

-- MIN(NOMBRE_COLUMNA)
-- CUAL ES EL SALARIO MÁS BAJO
SELECT MIN(SALARIO) AS SALARIO_MAS_BAJO
FROM EMPLEADOS;

-- MAX(NOMBRE_COLUMNA)
-- CUAL ES EL SALARIO MÁS ALTO
SELECT MAX(SALARIO) AS SALARIO_MAS_ALTO
FROM EMPLEADOS;

-- CUAL ES EL SALARIO MÁS ALTO QUE PUEDE GANAR UN EMPLEDO DE TI
SELECT MAX(SALARIO) AS SALARIO_MAS_ALTO_TI
FROM EMPLEADOS
WHERE DEPARTAMENTO_ID = 30;

-- CUAL ES EL SALARIO MÁS BAJO QUE PUEDE GANAR UN EMPLEDO DE TI
SELECT MIN(SALARIO) AS SALARIO_MAS_BAJO_TI
FROM EMPLEADOS
WHERE DEPARTAMENTO_ID = 30;

