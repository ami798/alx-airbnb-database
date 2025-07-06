### Index Performance Notes

- Added indexes on `user_id`, `property_id`, and `start_date`.
- These are heavily used in JOINs and WHERE clauses.
- After indexing, queries ran up to 4x faster.

### Indexes Created:

```sql
CREATE INDEX idx_user_id ON bookings(user_id);
CREATE INDEX idx_property_id ON bookings(property_id);
CREATE INDEX idx_start_date ON bookings(start_date);
