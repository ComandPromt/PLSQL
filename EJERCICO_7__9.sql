SET SERVEROUTPUT ON;
CREATE OR REPLACE PROCEDURE NUEVA_NOTA2(
nDNI ALUMNOS.DNI%TYPE,
nASIGNATURA ASIGNATURAS.NOMBRE%TYPE,
nNOTA NOTAS.NOTA%TYPE
)
IS
COD_AS NUMBER;
BEGIN
SELECT COD INTO COD_AS FROM ASIGNATURAS WHERE NOMBRE=nASIGNATURA;
INSERT INTO NOTAS VALUES(nDNI,COD_AS,SYSDATE,nNOTA);
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Error: no existe dicha asignatura');
END;