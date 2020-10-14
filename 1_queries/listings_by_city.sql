SELECT properties.*, avg(rating) AS average_rating
FROM properties
JOIN reservations ON properties.id = reservations.property_id
JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE city LIKE '%Vancouver%'
GROUP BY properties.id
HAVING avg(rating) >= 4
ORDER BY cost_per_night ASC
LIMIT 10;