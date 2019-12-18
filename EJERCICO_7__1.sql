SET SERVEROUTPUT ON;

DECLARE
    cont        INTEGER := 1;
    nombre      HOTEL.Nombre%TYPE;
    localidad   HOTEL.Localidad%TYPE;
BEGIN
    FOR cont IN 1..10 LOOP
        SELECT
            nombre,
            localidad
        INTO
            nombre,localidad
        FROM
            hotel
        WHERE
            idh = cont;

        dbms_output.put_line(cont || ' ' || nombre || ','    || localidad);
    END LOOP;
END;
/