SELECT category.name, COUNT(language.name) AS sum
FROM category
JOIN film_category ON category.category_id = film_category.category_id
JOIN film ON film.film_id = film_category.film_id
JOIN language ON language.language_id = film.language_id
GROUP BY category.name
ORDER BY category.name;

