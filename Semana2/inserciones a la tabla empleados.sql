INSERT INTO EMPLEADOS (EMPLEADO_ID, NOMBRE, SALARIO, FECHA_CONTRATACION, DEPARTAMENTO_ID)
VALUES (11, 'Ana Rodríguez', NULL, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 30);

INSERT INTO EMPLEADOS (EMPLEADO_ID, NOMBRE, SALARIO, FECHA_CONTRATACION, DEPARTAMENTO_ID)
VALUES (7, 'Carlos Méndez', 2500, TO_DATE('2022-11-01', 'YYYY-MM-DD'), 20);

INSERT INTO EMPLEADOS (EMPLEADO_ID, NOMBRE, SALARIO, FECHA_CONTRATACION, DEPARTAMENTO_ID)
VALUES (8, 'Elena Castillo', 1800, NULL, 10);

INSERT INTO EMPLEADOS (EMPLEADO_ID, NOMBRE, SALARIO, FECHA_CONTRATACION, DEPARTAMENTO_ID)
VALUES (9, 'Manuel López', NULL, TO_DATE('2021-08-10', 'YYYY-MM-DD'), NULL);

INSERT INTO EMPLEADOS (EMPLEADO_ID, NOMBRE, SALARIO, FECHA_CONTRATACION, DEPARTAMENTO_ID)
VALUES (10, NULL, 2200, TO_DATE('2023-03-12', 'YYYY-MM-DD'), 40);

SELECT * FROM EMPLEADOS
SELECT * FROM DEPARTAMENTOS