SET SERVEROUTPUT ON
CREATE OR REPLACE PROCEDURE SUMA
IS
 Num_1 NUMBER:=10.2;
 Num_2 NUMBER:=20.1;
BEGIN
    DBMS_OUTPUT.PUT_LINE(Num_1+Num_2);
END;
/