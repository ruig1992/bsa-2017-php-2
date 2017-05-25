SELECT u.* FROM users AS u INNER JOIN bookings AS b ON b.user_id = u.id INNER JOIN tickets AS t ON b.ticket_id = t.id WHERE u.age > 25 GROUP BY b.user_id HAVING SUM(t.price) > 400;
