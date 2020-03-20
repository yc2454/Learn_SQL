SELECT COUNT(*) FROM
    (SELECT DISTINCT person_id FROM crew 
        WHERE title_id IN 
        (SELECT title_id FROM crew WHERE person_id = 
        (SELECT person_id FROM people WHERE name = "Mark Hamill" AND born = 1951)) AND job IS NULL);