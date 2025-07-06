SELECT bookings.id AS booking_id, users.id AS user_id, users.name, bookings.start_date, bookings.end_date
FROM bookings
INNER JOIN users ON bookings.user_id = users.id;
SELECT properties.id AS property_id, properties.name, reviews.rating, reviews.comment
FROM properties
LEFT JOIN reviews ON properties.id = reviews.property_id;
SELECT users.id AS user_id, users.name, bookings.id AS booking_id, bookings.start_date
FROM users
FULL OUTER JOIN bookings ON users.id = bookings.user_id;
SELECT users.id, users.name, bookings.id AS booking_id, bookings.start_date
FROM users
LEFT JOIN bookings ON users.id = bookings.user_id

UNION

SELECT users.id, users.name, bookings.id AS booking_id, bookings.start_date
FROM bookings
LEFT JOIN users ON users.id = bookings.user_id;
