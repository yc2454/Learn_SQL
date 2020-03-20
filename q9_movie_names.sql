SELECT primary_title FROM titles WHERE title_id IN
    (SELECT DISTINCT title_id FROM crew 
            WHERE title_id IN 
            (SELECT title_id FROM crew WHERE person_id = 
            (SELECT person_id FROM people WHERE name = "Mark Hamill" AND born = 1951)
                INTERSECT
            SELECT title_id FROM crew WHERE person_id = 
            (SELECT person_id FROM people WHERE name = "George Lucas" AND born = 1944)));