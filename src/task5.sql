SELECT * FROM users WHERE id NOT IN (SELECT b.user_id FROM bookings AS b INNER JOIN tickets AS t ON b.ticket_id = t.id WHERE t.country = 'Aruba');
