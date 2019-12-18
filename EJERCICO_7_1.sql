SET SERVEROUTPUT ON;
CREATE OR REPLACE PROCEDURE imprimir_1 IS
    cont  NUMBER := 1;
    nombre Hotel.Nombre%TYPE;
    localidad Hotel.Localidad%TYPE;
BEGIN
    LOOP
        SELECT nombre,localidad INTO nombre,localidad
        from hotel where idh=cont;
        
         DBMS_OUTPUT.PUT_LINE(cont ||' ' || nombre ||', ' || localidad);
         cont:=cont+1;
        EXIT WHEN cont>10;
    END LOOP;
END;