-- Indexes for the User table
CREATE INDEX user_user_id_idx ON User(user_id);
CREATE INDEX user_email_idx ON User(email);


-- Indexes for the Booking table
CREATE INDEX booking_user_id_idx ON User(user_id);
CREATE INDEX booking_property_id_idx ON Boking(property_id);


-- Indexes for the Property table
CREATE INDEX property_user_id_idx ON Property(user_id);
CREATE INDEX property_property_id_idx ON Property(property_id);


EXPLAIN ANALYZE
SELECT * FROM Booking
WHERE user_id = 3;

-- Query 2: Join Booking and Property
EXPLAIN ANALYZE
SELECT Booking.booking_id, Property.name
FROM Booking
JOIN Property ON Booking.property_id = Property.property_id
WHERE Booking.status = 'confirmed'
ORDER BY Booking.booking_date DESC;

-- Query 3: Filter properties by location and price
EXPLAIN ANALYZE
SELECT * FROM Property
WHERE location = 'New York'
ORDER BY price DESC;
