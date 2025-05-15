-- File: partitioning.sql

-- Step 1: Drop the original Booking table if needed
DROP TABLE IF EXISTS Booking;

-- Step 2: Create partitioned Booking table by RANGE on start_date
CREATE TABLE Booking (
    booking_id VARCHAR(10) PRIMARY KEY,
    property_id VARCHAR(10),
    user_id VARCHAR(10),
    start_date DATE,
    end_date DATE,
    total_price DECIMAL(10,2),
    status VARCHAR(20)
)
PARTITION BY RANGE (YEAR(start_date)) (
    PARTITION p2023 VALUES LESS THAN (2024),
    PARTITION p2024 VALUES LESS THAN (2025),
    PARTITION p2025 VALUES LESS THAN (2026),
    PARTITION pmax VALUES LESS THAN MAXVALUE
);

