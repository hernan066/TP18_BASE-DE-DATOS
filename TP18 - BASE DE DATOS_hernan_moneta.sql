-- Micro desafío - Paso 1:

SELECT title, name
FROM series
INNER JOIN genres ON genre_id = genres.id;

SELECT title, first_name, last_name
FROM episodes
INNER JOIN actor_episode ON episodes.id = episode_id
INNER JOIN actors ON actor_id = actors.id;

-- Micro desafío - Paso 2:

SELECT distinct first_name, last_name
FROM movies
INNER JOIN actor_movie ON movies.id = movie_id
INNER JOIN actors ON actors.id = actor_id
WHERE title LIKE "%Guerra%";

-- Micro desafío - Paso 3:

SELECT movies.id, title, ifnull(name, "No tiene genero")AS genero 
FROM movies
LEFT JOIN genres ON  genre_id = genres.id;

-- Micro desafío - Paso 4:

SELECT title, datediff(end_date, release_date) AS Duración
FROM series;

-- Micro desafío - Paso 5:

SELECT first_name, last_name
FROM actors
WHERE length(first_name) > 6 ORDER  BY first_name ASC;

SELECT count(*) AS "Total"
FROM episodes;

SELECT series.title, count(*) AS temporadas
FROM seasons
INNER JOIN series ON series.id = seasons.serie_id
GROUP BY series.title
HAVING count(*);

SELECT  genres.name, count(*) AS generos
FROM movies
INNER JOIN genres ON  genre_id = genres.id
GROUP BY genres.name
HAVING count(*) >= 3;






