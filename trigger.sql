CREATE OR REPLACE TRIGGER PesoPositivo
-- Se activar� cada vez que se inserte o actualice (justo antes)
BEFORE INSERT OR UPDATE OF Peso ON Pieza
FOR EACH ROW
BEGIN
 IF :new.Peso < 0 THEN
 RAISE_APPLICATION_ERROR(-20100, 'Peso no v�lido');
 END IF;
END PesoPositivo;
/