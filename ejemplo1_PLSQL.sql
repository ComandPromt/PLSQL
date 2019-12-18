SET SERVEROUTPUT ON
DECLARE
v_idt NUMBER;
v_nombre VARCHAR2(20);
BEGIN
    SELECT IDT,Nombre
    INTO v_idt,v_nombre
    FROM Turista
    WHERE IDT=6;
    DBMS_OUTPUT.put_line('El turista ' || v_idt || ' se llama ' || v_nombre );
END;
/