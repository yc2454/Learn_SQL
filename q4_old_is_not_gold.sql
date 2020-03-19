SELECT CAST(premiered/10 AS TEXT) || "0s" as decade, COUNT(*) FROM titles WHERE premiered NOT NULL GROUP BY (premiered/10);
