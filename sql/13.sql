SELECT film.film_id, film.title, film.language_id, language.name
FROM film
JOIN language ON film.language_id = language.language_id
WHERE (film.title ILIKE 'K%' OR film.title ILIKE 'Q%')
  AND language.name = 'English'
ORDER BY film.title;

