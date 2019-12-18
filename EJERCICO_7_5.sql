CREATE OR REPLACE PROCEDURE CREAR_PAQUETE (
    nombre Turista.nombre%TYPE,
    apellidos Turista.apellidos%TYPE,
    direccion Turista.direccion%TYPE,
    localidad Turista.localidad%TYPE,
    provincia Turista.provincia%TYPE,
    tlf Turista.tlf%TYPE) IS

    IDT  NUMBER;
BEGIN
	SELECT MAX(IDT)+1 INTO IDT FROM TURISTA;
    
    IF SQL%NOTFOUND THEN
        IDT := 1;
    END IF;
	
    INSERT INTO TURISTA VALUES(IDT,nombre,apellidos,direccion,localidad,provincia,tlf);       
END;
/

EXEC CREAR_TURISTA('Ramón','Pérez','C\Barcelona','Écija','Sevilla',612547895);