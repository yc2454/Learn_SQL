SELECT (
    (votes * 1.0 / (votes + 25000)) * rating
    + 
    (25000 * 1.0 / (votes + 25000)) * (SELECT AVG(rating) FROM ratings)
) AS WR, (SELECT primary_title FROM titles WHERE title_id = ratings.title_id) FROM ratings
ORDER BY WR DESC
LIMIT 250;