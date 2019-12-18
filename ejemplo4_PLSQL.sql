CREATE OR REPLACE PROCEDURE Insertar_Tuerca
IS
 NumP NUMBER;
BEGIN
    SELECT MAX(P#)
    INTO NumP
    From Pieza;
 INSERT INTO Pieza (P#,Nombre,Peso)
 VALUES (NumP+1,'Tuerca', 4);
END;
/