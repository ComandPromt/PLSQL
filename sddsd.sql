DECLARE
    numhabitaciones   tabla_c.numcomentario%TYPE;
    comentario        VARCHAR2(40);
    idh               NUMBER;
BEGIN
    SELECT
        nhabs
    INTO
        numhabitaciones
    FROM
        hotel2
    WHERE
        hotelid = 99;

    IF
        numhabitaciones < 50
    THEN
        comentario := 'Pequeño';
    ELSIF numhabitaciones < 100 THEN
        comentario := 'Mediano';
    ELSE
        comentario := 'Grande';
    END IF;

    SELECT
        MAX(numcomentario) + 1
    INTO
        idh
    FROM
        tabla_c;

    IF
        idh IS NULL
    THEN
        idh := 1;
    END IF;
    INSERT INTO tabla_c VALUES ( idh,99,comentario );

END;