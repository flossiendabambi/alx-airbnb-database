SELECT name
FROM Property
WHERE property_id IN (
  SELECT property_id
  FROM Review
  WHERE AVG(rating) > 4.0
  );
