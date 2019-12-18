SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE NUEVA_ASIGNATURA(
    nombre VARCHAR2
    )
    IS
    maximo NUMBER;
BEGIN
    SELECT MAX(COD)+1 INTO maximo FROM ASIGNATURAS;
    IF maximo IS NULL THEN
        maximo := 1;
    END IF;
    INSERT INTO ASIGNATURAS VALUES (maximo,nombre);
    DBMS_OUTPUT.PUT_LINE('Asignatura insertada correctamente');

END;