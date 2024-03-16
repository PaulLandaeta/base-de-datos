-- Modificar un Objeto 

-- ALTER 
-- agregar un nuevo atributo a la tabla 
ALTER TABLE nombre_de_la_tabla
ADD columna_nueva tipo restricciones;

-- agregar un atributo a la tabla libros llamado costo 
ALTER TABLE libro
ADD costo double not null;

-- Opsss!!!!! no era double era int 
ALTER TABLE nombre_de_la_tabla
MODIFY nombre_columna tipo_dato restricciones;

ALTER TABLE libro
MODIFY costo int not null;

-- Lo siento Brocito el nombre del atributo era cost

ALTER TABLE nombre_de_la_tabla
CHANGE nombre_columna nuevo_nombre_de_la_columna tipo restricciones;


ALTER TABLE libro
CHANGE costo cost int not null;


-- Perdon estoy muy distraido no agregue mi primary key 

ALTER TABLE nombre_de_la_tabla
ADD PRIMARY KEY (nombre_columna);

-- unito mas y no ...... como agrego las foreign keys ?

ALTER TABLE nombre_de_la_tabla
ADD FOREIGN KEY (nombre_columna) REFERENCES nombre_otra_tabla(columna_otra_tabla);


-- Cambia el nombre a la tabla X 
ALTER TABLE nombre_tabla_antiguo
RENAME TO nuevo_nombre;