-- Tabla de Estudiantes
CREATE TABLE ESTUDIANTES (
    ID_ESTUDIANTE NUMBER PRIMARY KEY,
    NOMBRE VARCHAR2(50),
    APELLIDO VARCHAR2(50),
    CORREO VARCHAR2(100) UNIQUE,
    TELEFONO VARCHAR2(15)
);

-- Tabla de Cursos
CREATE TABLE CURSOS (
    ID_CURSO NUMBER PRIMARY KEY,
    NOMBRE_CURSO VARCHAR2(50),
    CREDITO NUMBER(2),
    DURACION_MESES NUMBER(2)
);

-- Tabla de Matrículas
CREATE TABLE MATRICULAS (
    ID_MATRICULA NUMBER PRIMARY KEY,
    ID_ESTUDIANTE NUMBER REFERENCES ESTUDIANTES(ID_ESTUDIANTE) ON DELETE CASCADE,
    ID_CURSO NUMBER REFERENCES CURSOS(ID_CURSO) ON DELETE CASCADE,
    FECHA_MATRICULA DATE,
    NOTA_FINAL NUMBER(5, 2)
);

-- Estudiantes
INSERT INTO ESTUDIANTES VALUES (1, 'Juan', 'Pérez', 'juan.perez@example.com', '987654321');
INSERT INTO ESTUDIANTES VALUES (2, 'María', 'Gómez', 'maria.gomez@example.com', '912345678');
INSERT INTO ESTUDIANTES VALUES (3, 'Luis', 'Martínez', 'luis.martinez@example.com', NULL);

-- Cursos
INSERT INTO CURSOS VALUES (101, 'Matemáticas Básicas', 4, 3);
INSERT INTO CURSOS VALUES (102, 'Programación en Java', 5, 4);
INSERT INTO CURSOS VALUES (103, 'Redes de Computadoras', 3, 2);

-- Matrículas
INSERT INTO MATRICULAS VALUES (1, 1, 101, TO_DATE('2024-01-10', 'YYYY-MM-DD'), 85.5);
INSERT INTO MATRICULAS VALUES (2, 2, 102, TO_DATE('2024-01-12', 'YYYY-MM-DD'), 90.0);
INSERT INTO MATRICULAS VALUES (3, 3, 103, TO_DATE('2024-01-15', 'YYYY-MM-DD'), NULL);





SELECT T1.COLUMNA1, T2.COLUMNA2
FROM TABLA1 T1
INNER JOIN TABLA2 T2
ON T1.LLAVE_PRIMARIA = T2.LLAVE_FORANEA;

