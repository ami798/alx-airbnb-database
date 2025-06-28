# Normalization Steps to 3NF

## 1NF (First Normal Form)
- All tables have atomic values.
- Repeating groups are removed.

## 2NF (Second Normal Form)
- Partial dependencies are removed.
- Each non-key attribute is fully dependent on the primary key.

## 3NF (Third Normal Form)
- Transitive dependencies are removed.
- Non-key attributes depend only on the primary key.

## Example:

**Initial Redundant Table (Not Normalized)**:
```plaintext
Booking(id, user_name, property_title, start_date, end_date, total_price)
