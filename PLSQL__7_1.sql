SET SERVEROUTPUT ON;
DECLARE
CURSOR C IS
SELECT APENOM,NOMBRE,FECHA,NOTA
FROM alumnos A
join notas N on A.dni=N.dni 
join asignaturas S on N.cod=S.cod;
BEGIN
FOR vReg IN C LOOP
    DBMS_OUTPUT.PUT_LINE(c%ROWCOUNT || ' '||vReg.ApeNom || ' | ' ||vReg.Nombre|| ' | ' ||vReg.Fecha|| ' | ' ||vReg.Nota);
END LOOP;
END;
/