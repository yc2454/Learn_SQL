SELECT COUNT(*) AS cnt, (SELECT primary_title FROM titles WHERE title_id = akas.title_id)
    FROM akas WHERE akas.title_id IN 
        (SELECT title_id FROM titles)
    GROUP BY akas.title_id
    ORDER BY cnt DESC 
    LIMIT 10;