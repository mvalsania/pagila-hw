SELECT customer.customer_id, customer.first_name, customer.last_name, SUM(payment.amount) AS sum
FROM customer
JOIN payment ON customer.customer_id = payment.customer_id
GROUP BY customer.customer_id
ORDER BY customer.last_name;

