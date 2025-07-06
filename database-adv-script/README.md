# Task 0 – Complex SQL Joins

This script demonstrates the use of various SQL JOINs to combine data from multiple tables in the context of an Airbnb-like database.

## Queries Overview

1. **INNER JOIN**
   - Retrieves all bookings and the users who made them.
   - Only includes records where a booking has a valid user.

2. **LEFT JOIN**
   - Retrieves all properties and any corresponding reviews.
   - Properties without reviews are still included with `NULL` review data.

3. **FULL OUTER JOIN**
   - Retrieves all users and all bookings.
   - Includes users without bookings and bookings without users.
   - If the database does not support `FULL OUTER JOIN`, a simulated version using `UNION` of `LEFT JOIN`s is provided.

## File

All SQL queries are in the `joins_queries.sql` file.
