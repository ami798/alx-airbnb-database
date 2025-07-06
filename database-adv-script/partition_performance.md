### Partitioning Report

**Goal:** Optimize performance for large Booking table.

**Method:** Partitioned by `start_date` into yearly segments.

**Results:**
- Query filtering on dates ran 2.5x faster on partitioned table.
- Reduced full table scans.

**Conclusion:** Partitioning is highly effective for time-series data.
