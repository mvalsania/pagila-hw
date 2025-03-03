SELECT film.film_id, film.title, COUNT(*) AS count
FROM film
JOIN inventory ON film.film_id = inventory.film_id
WHERE film.title ILIKE 'H%'
GROUP BY film.film_id
ORDER BY film.title DESC;

