SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE HACKEA_MIS_NOTAS(
    v_alumno ALUMNOS.apenom%TYPE;
    v_asignatura ASIGNATURAS.nombre%TYPE;
    )
    IS
    v_dni   ALUMNOS.dni%TYPE;
    v_cod   ASIGNATURAS.cod%TYPE;
BEGIN
SELECT l.dni,a.cod into v_dni,v_cod FROM asignaturas a,notas n, alumnos l
WHERE a.cod=n.cod AND l.dni=n.dni AND a.nombre=v_asignatura AND l.apenom=v_alumno;

UPDATE  NOTAS
SET NOTA=5
WHERE dni=v_dni AND cod=v_cod AND nota<5;
    EXCEPTION

      WHEN OTHERS THEN

       DBMS_OUTPUT.PUT_LINE('Error al localizar alumno y/o asignatura');

END;