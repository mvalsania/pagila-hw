SELECT staff.first_name,
       staff.last_name,
       SUM(payment.amount) AS sum
FROM staff
JOIN payment ON staff.staff_id = payment.staff_id
WHERE to_char(payment.payment_date, 'YYYY-MM-DD') >= '2020-01-01'
  AND to_char(payment.payment_date, 'YYYY-MM-DD') < '2020-02-01'
GROUP BY staff.staff_id, staff.first_name, staff.last_name
ORDER BY sum;

