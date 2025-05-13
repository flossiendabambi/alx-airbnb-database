SELECT User.first_name, User.last_name, COUNT(Booking.booking_id) AS total_bookings
FROM Booking
JOIN User ON Booking.user_id = User.user_id
GROUP BY User.first_name, User.last_name;
