SELECT Booking.booking_id, User.first_name, User.last_name 
  FROM Booking
INNER JOIN User ON Booking.user_id = User.user_id;

SELECT Property.name, Review.rating
  FROM Property
  LEFT JOIN Review ON Property.property_id = Review.property_id
  ORDER BY Review.rating DESC;

SELECT User.first_name, User.last_name, Booking.booking_id
FROM Booking
FULL OUTER JOIN User ON Booking.user_id = User.user_id;
