SELECT COUNT(DISTINCT city), country FROM destination GROUP BY country ORDER BY count DESC, country;
