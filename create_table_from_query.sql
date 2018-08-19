Use sakila;

 -- 6c. List each film and the number of actors who are listed for that film.
-- Save this query as a table. 

CREATE TABLE  num_actors_in_films
SELECT f.title, COUNT(fa.actor_id) AS 'Number of Actors'
FROM film AS f
INNER JOIN film_actor AS fa
ON (f.film_id = fa.film_id)
GROUP BY f.film_id;