-- Total bookings per user
SELECT u.id, u.name, COUNT(b.id) AS total_bookings
FROM users u
LEFT JOIN bookings b ON u.id = b.user_id
GROUP BY u.id;

-- Rank properties by number of bookings
SELECT p.id, p.name, COUNT(b.id) AS bookings,
  RANK() OVER (ORDER BY COUNT(b.id) DESC) AS popularity_rank
FROM properties p
JOIN bookings b ON p.id = b.property_id
GROUP BY p.id, p.name;
