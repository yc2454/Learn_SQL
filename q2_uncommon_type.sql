SELECT runtime_minutes, type, primary_title FROM titles WHERE (runtime_minutes, type) IN (SELECT MAX(runtime_minutes), type FROM titles GROUP BY type) ORDER BY type ASC, primary_title ASC;
