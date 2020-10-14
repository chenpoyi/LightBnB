SELECT reservations.*, properties.*, average_rating
FROM reservations
JOIN properties ON reservations.property_id = properties.id
JOIN (
-- All average ratings of every property--
SELECT property_id, avg(rating) as average_rating
FROM property_reviews
GROUP BY property_reviews.property_id

) as ratings
ON properties.id = ratings.property_id
WHERE reservations.guest_id = 1
AND end_date < now()::date
ORDER BY start_date 
;