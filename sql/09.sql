SELECT staff.first_name, staff.last_name, SUM(payment.amount) AS sum
FROM staff
JOIN payment ON staff.staff_id = payment.staff_id
WHERE payment.payment_date >= '2020-01-01'
  AND payment.payment_date < '2020-02-01'
GROUP BY staff.staff_id;

