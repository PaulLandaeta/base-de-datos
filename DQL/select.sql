-- Selecionar filas de acuerdo a condicion y filtrado de columnas 

SELECT columnas
FROM nombre_de_la_tabla
WHERE condicion;


-- selecionar las filas de la tabla X

SELECT *
FROM X; 

-- seleccionar las filas de la tabla X de acuerdo al id = 5

SELECT *
FROM X 
WHERE id = 5;

-- selecciona la columna 1 de la tabla X con id 5

SELECT columna1
FROM X
WHERE id = 5; 

-- Order By ordenara una columna dada de manera asc o desc 
-- por defecto me lo va ordenar de manera asc

SELECT columna1
FROM tabla 
ORDER BY columna [asc|desc]

-- LIMITES 
-- Limitar la cantidad de filas devueltas 
SELECT columna1
FROM tabla 
LIMIT numero_filas;


-- Los 20 primeros ordenados de manera asc
SELECT *
FROM artists
ORDER BY name
LIMIT 5;

-- QUE TAL SI QUIERO LOS SIGUIENTES 5; 
SELECT *
FROM artists
ORDER BY name
LIMIT 5, 5;
-- QUE TAL SI QUIERO LOS OTROS SIGUIENTE 5;

SELECT *
FROM artists
ORDER BY name
LIMIT 10 , 5;

-- Filtrando valores distintos 

SELECT DISTINCT columna 
FROM tabla 
WHERE condicion


-- EXAMPLE 
SELECT DISTINCT TITLE 
FROM SONGS
WHERE TITLE = 'song1';

-- Devolver el nombre y username en una sola columna 
-- CONCATENAR CONCAT 
SELECT username, name
FROM users 

SELECT CONCAT(username,' ',display_name) as nombre_completo 
FROM users;

-- Contaremos el numero de usuarios 
-- contar por filas 
SELECT COUNT(*) as numero_usuarios
FROM users;

-- Sumar el valor de una columna de todas las filas 

SELECT SUM(duration) as total_songs
FROM songs;


-- Cual es la cancion mas corta 

SELECT MIN(duration) as total_songs
FROM songs;

-- Cual es la cancion mas larga 
SELECT MAX(duration) as total_songs
FROM songs;


-- cual es el promedio de duracion de las canciones 

SELECT AVG(duration) as total_songs
FROM songs;



