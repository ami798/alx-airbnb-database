### Index Performance Notes

- Added indexes on `user_id`, `property_id`, and `start_date`.
- These are heavily used in JOINs and WHERE clauses.
- After indexing, queries ran up to 4x faster.

Indexes Created:
- idx_user_id
- idx_property_id
- idx_start_date
