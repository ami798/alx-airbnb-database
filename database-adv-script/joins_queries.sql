-- 1. INNER JOIN: Retrieve all bookings and the respective users who made those bookings
SELECT 
    bookings.id AS booking_id,
    bookings.start_date,
    bookings.end_date,
    users.id AS user_id,
    users.name AS user_name
FROM bookings
INNER JOIN users ON bookings.user_id = users.id;

-- 2. LEFT JOIN: Retrieve all properties and their reviews (including properties with no reviews)
SELECT 
    properties.id AS property_id,
    properties.name AS property_name,
    reviews.id AS review_id,
    reviews.rating,
    reviews.comment
FROM properties
LEFT JOIN reviews ON properties.id = reviews.property_id;

-- 3. FULL OUTER JOIN: Retrieve all users and all bookings (even if not linked)
-- If your DBMS supports FULL OUTER JOIN (e.g., PostgreSQL):
SELECT 
    users.id AS user_id,
    users.name AS user_name,
    bookings.id AS booking_id,
    bookings.start_date
FROM users
FULL OUTER JOIN bookings ON users.id = bookings.user_id;

-- If you're using MySQL (which doesn't support FULL OUTER JOIN), use this workaround:
-- (Uncomment this if needed and comment the above FULL OUTER JOIN)

-- SELECT 
--     users.id AS user_id,
--     users.name AS user_name,
--     bookings.id AS booking_id,
--     bookings.start_date
-- FROM users
-- LEFT JOIN bookings ON users.id = bookings.user_id

-- UNION

-- SELECT 
--     users.id AS user_id,
--     users.name AS user_name,
--     bookings.id AS booking_id,
--     bookings.start_date
-- FROM bookings
-- LEFT JOIN users ON bookings.user_id = users.id;
