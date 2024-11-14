CREATE TABLE departamentos (
    departamento_id NUMBER PRIMARY KEY,
    nombre VARCHAR2(50) NOT NULL
);

CREATE TABLE empleados (
    empleado_id NUMBER PRIMARY KEY,
    nombre VARCHAR2(50) NOT NULL,
    salario NUMBER(8, 2),
    departamento_id NUMBER,
    fecha_contratacion DATE,
    FOREIGN KEY (departamento_id) REFERENCES departamentos(departamento_id)
);

-- Insertar datos en la tabla departamentos
INSERT INTO departamentos (departamento_id, nombre) VALUES (10, 'Recursos Humanos');
INSERT INTO departamentos (departamento_id, nombre) VALUES (20, 'Finanzas');
INSERT INTO departamentos (departamento_id, nombre) VALUES (30, 'TI');
INSERT INTO departamentos (departamento_id, nombre) VALUES (40, 'Marketing');

-- Insertar datos en la tabla empleados
INSERT INTO empleados (empleado_id, nombre, salario, departamento_id, fecha_contratacion) 
VALUES (1, 'Juan Pérez', 3500.00, 10, TO_DATE('2021-06-15', 'YYYY-MM-DD'));
INSERT INTO empleados (empleado_id, nombre, salario, departamento_id, fecha_contratacion) 
VALUES (2, 'Ana García', 4000.00, 20, TO_DATE('2020-03-10', 'YYYY-MM-DD'));
INSERT INTO empleados (empleado_id, nombre, salario, departamento_id, fecha_contratacion) 
VALUES (3, 'Luis Martínez', 5000.00, 30, TO_DATE('2019-11-20', 'YYYY-MM-DD'));
INSERT INTO empleados (empleado_id, nombre, salario, departamento_id, fecha_contratacion) 
VALUES (4, 'Carla López', 3000.00, 40, TO_DATE('2022-01-01', 'YYYY-MM-DD'));
INSERT INTO empleados (empleado_id, nombre, salario, departamento_id, fecha_contratacion) 
VALUES (5, 'Pedro Sánchez', 4500.00, 30, TO_DATE('2023-05-15', 'YYYY-MM-DD'));
INSERT INTO empleados (empleado_id, nombre, salario, departamento_id, fecha_contratacion) 
VALUES (6, 'Marta Gómez', 2800.00, 10, TO_DATE('2021-09-25', 'YYYY-MM-DD'));

