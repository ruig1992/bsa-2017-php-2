SELECT DISTINCT u.* FROM users AS u INNER JOIN bookings AS b ON b.user_id = u.id;
# OR WITH USING SUBQUERY
#SELECT * FROM users WHERE id IN (SELECT DISTINCT user_id FROM bookings);
