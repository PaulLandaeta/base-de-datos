-- Hora y fecha del sistema Host
SELECT NOW();

-- si solo quiero la fecha 

SELECT CURDATE();

-- si solo quiero la hora 

SELECT CURTIME();

-- Cambiar el formato de la fecha 

SELECT DATE_FORMAT(fecha, 'format');

SELECT DATE_FORMAT(CURDATE(), '%D/%b/%Y')

SELECT DATE_FORMAT(created_at, '%D/%b/%Y')
from songs;


-- a la fecha actual sumen 1 dia 

SELECT DATE_ADD( created_at, INTERVAL 1 DAY) as date_1, created_at 
from songs;

-- una semana 

SELECT DATE_ADD( created_at, INTERVAL 1 WEEK) as date_1, created_at 
from songs;

-- obtener el mes año o dia de una fecha 


SELECT YEAR(fecha);
SELECT MONTH(fecha);
SELECT DAY(fecha);


-- Obtener los usuarios que se registraron 3 meses atras 

select DATE_SUB(CURDATE(), INTERVAL 3 MONTH) ;
SELECT * 
from users
where created_at >= DATE_SUB(CURDATE(), INTERVAL 3 MONTH)  ;


-- mostrar los usuarios con mas de 30 años 

SELECT * 
from users
where birthrate <= DATE_SUB(CURDATE(), INTERVAL 30 YEAR);


SELECT * 
from users 
where year(curdate()) - year(birthrate) < 30;

SELECT username, email, year(now()) - year(birthrate) as edad 
from users
where year(now()) - year(birthrate) >= 30;


-- Cuanto tiempo transcurrio desde que te registraste hasta el dia de hoy

SELECT TIMESTAMPDIFF(TIPO, date1, date2 );

-- Mostrar los emails de los usuarios que esten pronto a vencer
-- (10 dias) su plan de 3 meses,
--  asumir que cada mes tiene solo 30 dias 

SELECT count(*)
FROM users
WHERE timestampdiff(day, created_at, now()) >= 80 
and timestampdiff(day, created_at, now()) <= 90;

SELECT count(*)
FROM (
SELECT email, TIMESTAMPDIFF(DAY, created_at, now()) as Dias
FROM users
) as tabla1
WHERE Dias-90 <= 0 and Dias >= -10;