DECLARE
 NumP NUMBER:=7; -- Número de Pieza, empezamos en 7
BEGIN
 INSERT INTO Pieza (P#,Nombre,Peso)
 VALUES (NumP,'Tornillo', 2);
 INSERT INTO Pieza (P#,Nombre,Peso)
 VALUES (NumP+1,'Tornillo', 4);
END;
/