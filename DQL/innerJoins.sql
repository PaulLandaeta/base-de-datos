-- Inner Join
-- Interseccion de la Relacion1 
-- con la Relacion 2

-- Tabla Users y la Tabla Creditos
SELECT * 
FROM Users as u
INNER JOIN CREDITOS as c 
 ON c.user_id = u.id 

-- Mostrar los usuarios que tengan
--  o no tengan credito si tiene credito
-- mostrar los datos 

-- LEFT JOIN 
SELECT * 
FROM Users as u
LEFT JOIN CREDITOS as c 
 ON c.user_id = u.id

-- LEFT OUTER JOIN 
SELECT * 
FROM Users as u
LEFT JOIN CREDITOS as c 
 ON c.user_id = u.id
WHERE c.id is NULL


-- RIGHT 

SELECT * 
FROM Creditos as c
RIGHT JOIN Users as u
 ON c.user_id = u.id


-- Consulta para obtener 
-- todas las canciones que 
-- le gustan a un usuario 
-- junto con los datos del 
-- álbum y del artista:
SELECT 
  songs.title AS song_title, 
  albums.title AS album_title, 
  artists.name AS artist_name 
FROM 
  user_likes
INNER JOIN songs ON user_likes.song_id = songs.id
INNER JOIN albums ON songs.album_id = albums.id
INNER JOIN artists ON albums.artist_id = artists.id
WHERE 
  user_likes.user_id = (SELECT id FROM users WHERE username = 'NombreDeUsuario');


-- Consulta para encontrar todos 
-- los usuarios que siguen al mismo artista:

SELECT DISTINCT 
  u.username
FROM 
  users u
INNER JOIN user_likes ul ON u.id = ul.user_id
INNER JOIN songs s ON ul.song_id = s.id
INNER JOIN albums a ON s.album_id = a.id
WHERE 
  a.artist_id IN (
    SELECT 
      albums.artist_id 
    FROM 
      user_likes
    INNER JOIN songs ON user_likes.song_id = songs.id
    INNER JOIN albums ON songs.album_id = albums.id
    WHERE 
      user_likes.user_id = (SELECT id FROM users WHERE username = 'NombreDeUsuario')
  ) AND u.id != (SELECT id FROM users WHERE username = 'NombreDeUsuario');
