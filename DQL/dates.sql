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