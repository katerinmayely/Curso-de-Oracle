select * from clientes;
select * from departamentos;
select * from empleados;
select * from pedidos;


-- AGREGAR UNA COLUMNA A LA TABLA DE PEDIDOS
ALTER TABLE PEDIDOS ADD ID_EMPLEADO NUMBER;

-- CAMBIAR LA LONGITUD DE UN CAMPO
ALTER TABLE EMPLEADOS MODIFY NOMBRE VARCHAR(100);

-- RESTRICCIÓN NOT NULL AL CAMPO RECIÉN AGREGADO
ALTER TABLE PEDIDOS MODIFY ID_EMPLEADO VARCHAR(100) NOT NULL;  -- ESTA RESTRICCIÓN NO SE PUEDE APLICAR EN NUESTRO CASO PORQUE TENEMOS REGISTROS CON ESE CAMPO NULL

-- AGREGAR LLAVE FORÁNEA
ALTER TABLE PEDIDOS ADD CONSTRAINT FK_EMPLEADO FOREIGN KEY (ID_EMPLEADO) REFERENCES EMPLEADOS (EMPLEADO_ID);

-- DML MODIFICAR ID_EMPLEADO A 1
UPDATE PEDIDOS 
SET ID_EMPLEADO = 1;

-- A ESTE PUNTO YA PUEDO AGREGAR LA RESTRICCIÓN
ALTER TABLE PEDIDOS MODIFY ID_EMPLEADO NUMBER NOT NULL;

-- ELIMINAR CAMPO SALARIO DE LOS EMPLEADOS COMO EJEMPLO
ALTER TABLE EMPLEADOS DROP COLUMN SALARIO;

-- MODIFICAR EL NOMBRE DE UN CAMPO
ALTER TABLE EMPLEADOS RENAME COLUMN NOMBRE TO NOMBRE_COMPLETO;

-- MODIFICAR EL NOMBRE DE UNA TABLE 
ALTER TABLE PEDIDOS RENAME TO COMPRAS;

SELECT * FROM COMPRAS;




