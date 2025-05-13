SELECT User.first_name, User.last_name, COUNT(Booking.booking_id) AS total_bookings
FROM Booking
JOIN User ON Booking.user_id = User.user_id
GROUP BY User.first_name, User.last_name;


SELECT 
  name,
  total_bookings,
  ROW_NUMBER() OVER (ORDER BY total_bookings DESC) AS row_num,
  RANK() OVER (ORDER BY total_bookings DESC) AS rank_num
FROM (
  SELECT Property.name, COUNT(Booking.booking_id) AS total_bookings
    FROM Booking
    JOIN Property ON Booking.user_id = Property.user_id
    GROUP BY Property.name
  AS BookingTable;
