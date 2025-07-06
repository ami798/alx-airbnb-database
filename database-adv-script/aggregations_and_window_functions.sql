
SELECT u.id, u.name, COUNT(b.id) AS total_bookings
FROM users u
LEFT JOIN bookings b ON u.id = b.user_id
GROUP BY u.id, u.name;


SELECT p.id, p.name, COUNT(b.id) AS booking_count,
  RANK() OVER (ORDER BY COUNT(b.id) DESC) AS rank
FROM properties p
LEFT JOIN bookings b ON p.id = b.property_id
GROUP BY p.id, p.name;
