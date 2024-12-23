CREATE TABLE VENTAS (
    ID_VENTA NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    REGION VARCHAR2(50) NOT NULL,
    PRODUCTO VARCHAR2(50) NOT NULL,
    CANTIDAD NUMBER(10) NOT NULL,
    PRECIO NUMBER(10, 2) NOT NULL
);

-- Registros para la tabla VENTAS
INSERT INTO VENTAS (REGION, PRODUCTO, CANTIDAD, PRECIO) VALUES ('Norte', 'Laptop', 10, 800);
INSERT INTO VENTAS (REGION, PRODUCTO, CANTIDAD, PRECIO) VALUES ('Sur', 'Laptop', 5, 800);
INSERT INTO VENTAS (REGION, PRODUCTO, CANTIDAD, PRECIO) VALUES ('Norte', 'Teléfono', 8, 500);
INSERT INTO VENTAS (REGION, PRODUCTO, CANTIDAD, PRECIO) VALUES ('Sur', 'Teléfono', 15, 500);
INSERT INTO VENTAS (REGION, PRODUCTO, CANTIDAD, PRECIO) VALUES ('Este', 'Tablet', 7, 300);
INSERT INTO VENTAS (REGION, PRODUCTO, CANTIDAD, PRECIO) VALUES ('Oeste', 'Tablet', 12, 300);
INSERT INTO VENTAS (REGION, PRODUCTO, CANTIDAD, PRECIO) VALUES ('Norte', 'Monitor', 4, 150);
INSERT INTO VENTAS (REGION, PRODUCTO, CANTIDAD, PRECIO) VALUES ('Sur', 'Monitor', 9, 150);