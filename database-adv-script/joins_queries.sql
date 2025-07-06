-- 1. List all bookings with user and property name
SELECT b.id AS booking_id, u.name AS user_name, p.name AS property_name, b.start_date, b.end_date
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id;

-- 2. Properties that were never booked (LEFT JOIN + WHERE NULL)
SELECT p.id, p.name
FROM properties p
LEFT JOIN bookings b ON p.id = b.property_id
WHERE b.id IS NULL;
