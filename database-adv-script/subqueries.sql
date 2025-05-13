SELECT name
FROM Property
WHERE property_id IN (
  SELECT property_id
  FROM Review
  WHERE AVG(rating) > 4.0
  );

SELECT DISTINCT User.user_id, User.first_name, User.last_name
FROM User
WHERE (
    SELECT COUNT(*)
    FROM Booking b
    WHERE b.user_id = User.user_id
) > 3;
