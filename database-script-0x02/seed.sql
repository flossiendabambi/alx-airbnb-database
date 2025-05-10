INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES 
('u1', 'Alice', 'Johnson', 'alice@example.com', 'hash1', '1234567890', 'guest'),
('u2', 'Bob', 'Smith', 'bob@example.com', 'hash2', '0987654321', 'host'),
('u3', 'Clara', 'Lee', 'clara@example.com', 'hash3', NULL, 'admin');


INSERT INTO Property (property_id, host_id, name, description, location, price_per_night)
VALUES 
('p1', 'u2', 'Cozy Cottage', 'A quiet retreat in the mountains', 'Denver, CO', 120.00),
('p2', 'u2', 'Modern Loft', 'Downtown apartment with great views', 'Seattle, WA', 150.00);

INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES 
('b1', 'p1', 'u1', '2025-06-01', '2025-06-05', 480.00, 'confirmed'),
('b2', 'p2', 'u1', '2025-07-10', '2025-07-12', 300.00, 'pending');


INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES 
('pay1', 'b1', 480.00, 'credit_card'),
('pay2', 'b2', 300.00, 'paypal');

INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES 
('r1', 'p1', 'u1', 5, 'Loved the peaceful environment!'),
('r2', 'p2', 'u1', 4, 'Great location, but a bit noisy at night.');


INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES 
('m1', 'u1', 'u2', 'Hi Bob, is the loft available next weekend?'),
('m2', 'u2', 'u1', 'Hi Alice, yes it is available for those dates!');

