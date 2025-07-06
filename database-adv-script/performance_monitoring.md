### Performance Monitoring and Schema Refinement

**Tools Used:** EXPLAIN ANALYZE, SHOW PROFILE

**Findings:**
- Joins on non-indexed columns caused table scans.
- Filtering by non-indexed dates slowed queries.

**Changes Made:**
- Indexed `start_date` on bookings.
- Rewrote queries with specific column selections.

**Outcome:**
- SELECT with filtering now runs 3x faster.
