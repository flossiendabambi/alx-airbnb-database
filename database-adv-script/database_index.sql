-- Indexes for the User table
CREATE INDEX user_user_id_idx ON User(user_id)
CREATE INDEX user_email_idx ON User(email)


-- Indexes for the Booking table
CREATE INDEX booking_user_id_idx ON User(user_id)
CREATE INDEX booking_property_id_idx ON Boking(property_id)


-- Indexes for the Property table
CREATE INDEX property_user_id_idx ON Property(user_id)
CREATE INDEX property_property_id_idx ON Property(property_id)


EXPLAIN ANALYZE
SELECT * FROM Booking
WHERE user_id = 3;
