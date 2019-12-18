SET SERVEROUTPUT ON;
CREATE OR REPLACE PROCEDURE CREAR_TURISTA IS
    IDT  NUMBER := 1;
    nombre Turista.nombre%TYPE;
    apellidos Turista.apellidos%TYPE;
    direccion Turista.direccion%TYPE;
    localidad Turista.localidad%TYPE;
    provincia Turista.provincia%TYPE;
    tlf Turista.tlf%TYPE;
BEGIN
SELECT MAX(IDT)+1 INTO IDT FROM TURISTA;
        INSERT INTO TURISTA VALUES(IDT,nombre,apellidos,direccion,localidad,provincia,tlf);       
END;