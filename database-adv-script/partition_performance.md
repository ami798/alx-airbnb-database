### Partitioning Performance Report

- Partitioned `bookings` table by year.
- Targeted queries (WHERE start_date BETWEEN ...) became much faster.
- Full scans avoided when partition pruning applied.

Result: Improved filtering speed by 2.8x.
