SET SERVEROUTPUT ON;
CREATE OR REPLACE PROCEDURE ejercicio_7_2 IS
    cont  NUMBER := 1;
    nombre Hotel.Nombre%TYPE;
    localidad Hotel.Localidad%TYPE;
    plazas HOTEL.PLAZASDISPONIBLES%TYPE;
    tam VARCHAR2(15);
BEGIN
    LOOP
        SELECT nombre,localidad,plazasdisponibles INTO nombre,localidad,plazas
        from hotel where idh=cont;
        IF plazas<100 THEN
			TAM:='Pequeño';
        ELSIF plazas>200 THEN
			TAM:='Grande';
        ELSE
			TAM:='Mediano';
        END IF;
         DBMS_OUTPUT.PUT_LINE(cont ||' ' || nombre ||', ' || localidad||', ' ||tam);
         cont:=cont+1;
        EXIT WHEN cont>10;
    END LOOP;
END;