SELECT CASE WHEN acronym LIKE '___' THEN concat(regexp_replace(acronym, '.$', '0'), regexp_replace(acronym, '..', ''))  ELSE acronym END AS acronym FROM destination ORDER BY acronym;
