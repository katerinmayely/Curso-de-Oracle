CREATE TABLE DEPARTAMENTOS(
    DEPARTAMENTO_ID INT PRIMARY KEY,
    NOMBRE VARCHAR2(50) NOT NULL
)

CREATE TABLE EMPLEADOS(
    EMPLEADO_ID INT PRIMARY KEY,
    NOMBRE VARCHAR2(100),
    PUESTO VARCHAR2(50),
    DEPARTAMENTO_ID INT,
    
    FOREIGN KEY (DEPARTAMENTO_ID) REFERENCES DEPARTAMENTOS (DEPARTAMENTO_ID)
)

SELECT NOMBRE 
FROM DEPARTAMENTOS



