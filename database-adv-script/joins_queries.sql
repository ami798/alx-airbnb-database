
SELECT b.id AS booking_id, u.name AS user_name, b.start_date, b.end_date
FROM bookings b
INNER JOIN users u ON b.user_id = u.id;


SELECT p.id AS property_id, p.name, r.comment, r.rating
FROM properties p
LEFT JOIN reviews r ON p.id = r.property_id;


-
SELECT u.id AS user_id, u.name AS user_name, b.id AS booking_id
FROM users u
LEFT JOIN bookings b ON u.id = b.user_id
UNION
SELECT u.id, u.name, b.id
FROM users u
RIGHT JOIN bookings b ON u.id = b.user_id;
