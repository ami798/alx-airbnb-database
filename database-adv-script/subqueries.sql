-- 1. Users who have made more than 2 bookings
SELECT * FROM users
WHERE id IN (
    SELECT user_id
    FROM bookings
    GROUP BY user_id
    HAVING COUNT(*) > 2
);

-- 2. Properties with rating higher than average
SELECT * FROM properties
WHERE id IN (
    SELECT property_id
    FROM reviews
    GROUP BY property_id
    HAVING AVG(rating) > (
        SELECT AVG(rating) FROM reviews
    )
);

-- 3. Users who have not made any bookings
SELECT * FROM users
WHERE id NOT IN (
    SELECT DISTINCT user_id FROM bookings
    WHERE user_id IS NOT NULL
);
