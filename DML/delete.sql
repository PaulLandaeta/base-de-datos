-- Eliminar filas 

DELETE FROM nombre_de_la_tabla;
WHERE condicion; -- NOTA nunca olvidarse del WHERE 


-- Eliminando filas a partir de un dato de otra tabla 
DELETE asignatura
FROM asignatura 
INNER JOIN aula ON asignatura.codigo_aula = aula.codigo
WHERE aula.nombre = 'LPD';
