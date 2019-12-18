SET SERVEROUTPUT ON;
CREATE OR REPLACE PROCEDURE ejercicio_7_3 IS
    cont  NUMBER := 1;
    fecha Vuelo.fecha%TYPE;
    hora Vuelo.hora%TYPE;
    origen Vuelo.origen%TYPE;
    destino Vuelo.destino%TYPE;
    plazas Vuelo.plazastotales%TYPE;
BEGIN
    LOOP
        SELECT fecha,hora,origen,destino,plazastotales INTO fecha,hora,origen,destino,plazas
        from vuelo where idv=cont;
        IF EXTRACT(MONTH FROM Fecha) IN (7,8)THEN
        plazas:=plazas*1.1;
        END IF;
         DBMS_OUTPUT.PUT_LINE(cont ||' ' || fecha ||', ' || hora||', ' || origen||', ' || destino||', ' || plazas*0.1);
         cont:=cont+1;
        EXIT WHEN cont>10;
    
    END LOOP;
END;