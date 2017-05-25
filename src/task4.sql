UPDATE users SET is_deleted = 1 WHERE id NOT IN (SELECT DISTINCT user_id FROM bookings);
# OR WITH USING LEFT JOIN
#UPDATE users AS u LEFT JOIN bookings AS b ON u.id = b.user_id SET is_deleted = 1 WHERE b.user_id IS NULL;
