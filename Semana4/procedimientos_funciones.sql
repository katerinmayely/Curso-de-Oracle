alter table empleados add salario DECIMAL(10,2);

update empleados set salario = ROUND(DBMS_RANDOM.VALUE(1000, 3000));

select * from empleados;

-- PROCEDIMIENTO PARA INSERTAR UN EMPLEADO
CREATE OR REPLACE PROCEDURE agregar_empleado (
    p_nombre    IN VARCHAR2,
    p_id  IN NUMBER,
    p_salario   IN NUMBER,
    p_depto_id  IN NUMBER
)
AS
BEGIN
    INSERT INTO EMPLEADOS (EMPLEADO_ID, NOMBRE_COMPLETO, DEPARTAMENTO_ID, FECHA_CONTRATACION, SALARIO)
    VALUES (p_id, p_nombre, p_depto_id, SYSDATE, p_salario);
    COMMIT;
END;

BEGIN
    agregar_empleado('Wilmer Cerrato', 16, 6000, 40);
END;

-- FUNCIÓN PARA CALCULAR EL CUADRADO DE UN NÚMERO
CREATE OR REPLACE FUNCTION calcular_cuadrado (
    p_numero IN NUMBER
) RETURN NUMBER
AS
    v_cuadrado NUMBER; -- Variable para almacenar el resultado.
BEGIN
    v_cuadrado := p_numero * p_numero;
    RETURN v_cuadrado; -- Devuelve el resultado.
END;

SELECT calcular_cuadrado(5) AS resultado FROM dual;
-- Resultado: 25
