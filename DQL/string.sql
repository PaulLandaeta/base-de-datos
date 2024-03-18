-- Concatenar cadenas 

SELECT CONCAT(string, string, string);

-- Substring 
SELECT SUBSTRING(string, inicio, longitud);

-- obtener el tamaño del string 

SELECT LENGTH(string);

-- obtener los primeros 5 carecters del email del usuario 
SELECT 
	email,
    SUBSTRING(email, 1, 5) as emailSu,
    LENGTH(email) as tam
from users

-- eliminar espacios al principio y al final 

select TRIM(string);

-- eliminar espacios en blanco a la izq y der

SELECT TRIM('         58498      ') as sinE,
		'         58498      ' as conE;
-- convertir todos los hotmails a outlook 

SELECT email, REPLACE(email, 'hotmail', 'outlook')
FROM users
where email like '%hotmail%';


-- localizar la posicion de la arroba de un correo 
SELECT LOCATE('stringBuscado', 'StringDondeBuscar' ) as posicion;


SELECT email, LOCATE('@', email ) as posicion 
from users;

-- Mostrar todos los correos distintos de nuestros usuarios 
-- ejemplo, addthis.com, huffingtonpost.com, smugmug.com 


SELECT dominio, COUNT(*)
FROM (
SELECT email, LOCATE('@',email) as Arroba, SUBSTRING(email,LOCATE('@',email) ,LENGTH(email)) as dominio
FROM users
) as tabla1
GROUP BY dominio;
X = 14 - 5 = 9 + 1
X = 14 - 7 = 7 + 1
SELECT 
	LOCATE('@', 'paul@gmail.com') as pArroba,
    LENGTH('paul@gmail.com'),
    SUBSTRING(
		'paul@gmail.com', 
        LOCATE('@', 'paul@gmail.com'), 
        LENGTH('paul@gmail.com') - LOCATE('@', 'paul@gmail.com') + 1
        );

SELECT distinct SUBSTRING(
		email, 
        LOCATE('@', email), 
        LENGTH(email) - LOCATE('@', email) + 1
        )
from users;


select distinct 
	SUBSTRING_INDEX(
		RIGHT(email, LENGTH(email)), '@', -1) AS dominio
from users;

select *
from users
