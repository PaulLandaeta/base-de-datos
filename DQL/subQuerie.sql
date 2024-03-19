-- Subconsultas 

Select * 
From (Select * from TablaX) as SC
WHERE SC.atributo like 'patron'

-- IN 

SELECT a.title
FROM albums as a
WHERE a.artist_id IN (SELECT id
FROM artists
WHERE LOWER(name)  = LOWER('Sayre semark') OR  LOWER(name) = LOWER('Birdie Barens') );
