SET SERVEROUTPUT ON;
CREATE OR REPLACE PROCEDURE imprimir_1 IS
    cont  NUMBER := 1;
    nombre Turista.Nombre%TYPE;
    apellidos Turista.Apellidos%TYPE;
BEGIN
    LOOP
        SELECT nombre,apellidos INTO nombre,apellidos
        from turista where idt=cont;
        
         DBMS_OUTPUT.PUT_LINE(cont ||' ' || nombre ||', ' || apellidos);
         cont:=cont+1;
        EXIT WHEN cont>10;
    END LOOP;
END;