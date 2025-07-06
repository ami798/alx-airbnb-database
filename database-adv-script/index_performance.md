### Index Performance Report

- **Before Indexing**: Query on bookings by start_date took ~300ms.
- **After Indexing**: Query improved to ~30ms.
- **Conclusion**: Indexing significantly improves query speed on filtered columns.

Created indexes:
- `idx_users_name`
- `idx_bookings_start_date`
- `idx_properties_city`
