-- De que me sirve una base de datos sin datos !!!
-- Ingresar los datos 
-- |columna1|columna2|columna3|columnaN|
-- NOTA --->>> OBLIGADOS A PONER LOS ATRIBUTO NOT NULL excepto PK(AI) tiene que agregarse 
INSERT INTO nombre_de_la_tabla(columna2, columna1, columnaN, columna3, ...)
VALUES
    (valor_columna2, valor_columna1...),
    (valor_columna2, valor_columna1...),
    (valor_columna2, valor_columna1...);


-- Agregar datos a partir de una consulta 

INSERT INTO nombre_de_la_tabla(columna2, columna1, columnaN, columna3, ...)
SELECT columna2, columna1, ...
FROM nombre_tabla

-- EXAMPLE 
INSERT INTO aula_t(nombre, codigo)
SELECT nombre, codigo
FROM aula;
