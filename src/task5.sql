SELECT u.* FROM users AS u LEFT JOIN bookings AS b ON u.id = b.user_id LEFT JOIN tickets AS t ON b.ticket_id = t.id AND t.country = 'Aruba' GROUP BY u.id HAVING COUNT(t.id) = 0;
# OR WITH USING SUBQUERY
# SELECT * FROM users WHERE id NOT IN (SELECT b.user_id FROM bookings AS b INNER JOIN tickets AS t ON b.ticket_id = t.id WHERE t.country = 'Aruba');
