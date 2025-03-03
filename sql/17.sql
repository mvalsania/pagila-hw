SELECT country.country, SUM(payment.amount) AS profit
FROM country
JOIN city ON country.country_id = city.country_id
JOIN address ON city.city_id = address.city_id
JOIN customer ON address.address_id = customer.address_id
JOIN rental ON rental.customer_id = customer.customer_id
JOIN payment ON rental.rental_id = payment.rental_id
GROUP BY country.country
ORDER BY country.country

