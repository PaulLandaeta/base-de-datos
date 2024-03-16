-- DDL OBJETOS  DATABASE 
-- CREATE OBJECT name

-- Creando una Base de Datos 
CREATE DATABASE nombre_base_datos; 

-- Seleccionar la base de Datos
use nombre_base_datos;

-- Creando Tablas 

CREATE TABLE nombre_de_la_tabla(
    columna1 tipo_dato restricciones,
    columna2 tipo_dato restricciones,
    columna3 tipo_dato restricciones,
    .....
    columnaN tipo_dato restricciones
)

-- Example creando una Materia 
CREATE TABLE materia(
    codigo INT AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(250)
)

CREATE TABLE materia(
    codigo INT AUTO_INCREMENT,
    nombre varchar(250)
    PRIMARY KEY (codigo)
)

-- Creando una tabla con una llave compuesta 
CREATE TABLE nombre_de_la_tabla(
    columna1 tipo_dato restricciones,
    columna2 tipo_dato restricciones,
    columna3 tipo_dato restricciones,
    .....
    columnaN tipo_dato restricciones,
    PRIMARY KEY (column1, column2)
)

-- Creando tablas con Foreign Keys 
CREATE TABLE nombre_de_la_tabla(
    columna1 tipo_dato restricciones,
    columna2 tipo_dato restricciones,
    columna3 tipo_dato restricciones,
    .....
    columnaN tipo_dato restricciones,
    PRIMARY KEY (column1, column2),
    FOREIGN KEY (column3) 
    REFERENCES second_table(primary_key_second_table)
)

-- Creando tablas con Foreign Keys 
CREATE TABLE docente_materia(
    codigo_docente int,
    codigo_materia int,
    fecha DATE,
    PRIMARY KEY (codigo_docente, codigo_materia),
    FOREIGN KEY (codigo_docente) REFERENCES docente(codigo),
    FOREIGN KEY (codigo_materia) REFERENCES materia(codigo)
)

CREATE TABLE aula(
    codigo int primary key,
    nombre varchar(250),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)

-- Crear tablas temporales 
-- tiene vida solo en la sesion 
CREATE TEMPORARY TABLE nombre_tabla(
    columna1 tipo_dato restricciones,
    columna2 tipo_dato restricciones,
    columna3 tipo_dato restricciones,
    .....
    columnaN tipo_dato restricciones,
    PRIMARY KEY (column1, column2)
);

CREATE TEMPORARY TABLE log(
    codigo int primary key,
    `description` varchar(250)
);