SET SERVEROUTPUT ON;
CREATE OR REPLACE PROCEDURE PURGAR_BD
IS
BEGIN
    DELETE FROM ASIGNATURAS
WHERE COD NOT IN(SELECT COD FROM NOTAS);
END;

