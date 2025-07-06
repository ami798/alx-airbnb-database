-- 1. Users who have made more than 3 bookings
SELECT * FROM users
WHERE id IN (
    SELECT user_id
    FROM bookings
    GROUP BY user_id
    HAVING COUNT(*) > 3
);

-- 2. Properties where the average rating is greater than 4.0
SELECT * FROM properties
WHERE id IN (
    SELECT property_id
    FROM reviews
    GROUP BY property_id
    HAVING AVG(rating) > 4.0
);

-- 3. Users who have not made any bookings
SELECT * FROM users
WHERE id NOT IN (
    SELECT DISTINCT user_id FROM bookings
    WHERE user_id IS NOT NULL
);
