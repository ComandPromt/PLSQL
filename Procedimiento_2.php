SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE imprimir_2 IS
    cont        NUMBER := 1;
    nombre      turista.nombre%TYPE;
    apellidos   turista.apellidos%TYPE;
BEGIN
    WHILE cont <= 10 LOOP
        SELECT
            nombre,
            apellidos
        INTO
            nombre,apellidos
        FROM
            turista
        WHERE
            idt = cont;

        dbms_output.put_line(cont
         || ' '
         || nombre
         || ','
         || apellidos);

        cont := cont + 1;
    END LOOP;
END;