SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE NUEVA_NOTA(
    vNOMBRE asignaturas.nombre%type,
    PORCENTAJE NUMBER
)
IS
vCod notas.cod%TYPE;
BEGIN

SELECT MAX(cod) into Vcod from asignaturas a where a.nombre=vNombre;
if vCOD IS NOT NULL THEN
  UPDATE  NOTAS SET NOTA=NOTA*(1+PORCENTAJE/100) WHERE cod=vCod;
  ELSE
  DBMS_OUTPUT.PUT_LINE('La asignatura no existe');
  END IF;
END;