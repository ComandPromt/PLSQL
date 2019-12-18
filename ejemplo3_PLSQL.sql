DECLARE
 NumP NUMBER;
BEGIN
    SELECT MAX(P#)
    INTO NumP
    From Pieza;
 INSERT INTO Pieza (P#,Nombre,Peso)
 VALUES (NumP+1,'Tornillo', 4);
END;
/