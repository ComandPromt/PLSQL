SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE imprimir_3 IS
    cont        INTEGER := 1;
    nombre      turista.nombre%TYPE;
    apellidos   turista.apellidos%TYPE;
BEGIN
    FOR cont IN 1..10 LOOP
        SELECT
            nombre,
            apellidos
        INTO
            nombre,apellidos
        FROM
            turista
        WHERE
            idt = cont;

        dbms_output.put_line(cont || ' ' || nombre || ','    || apellidos);
    END LOOP;
END;