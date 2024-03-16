-- Actualizar los datos de una fila de una tabla.

UPDATE nombre_de_la_tabla
SET columna1 = valor1, columna 2 = valor2...
WHERE condicion 


-- Actualizar los datos de una fila o filas a partir de otra tabla

UPDATE asignatura 
INNER JOIN aula ON asignatura.codigo_aula = aula.codigo
SET asignatura.nombre_aula = aula.nombre