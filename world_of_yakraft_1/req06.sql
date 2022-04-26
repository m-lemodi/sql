SELECT title FROM quest WHERE level_min > 8 AND level_min <= 10 AND (creature_start = creature_end OR gold > 100) ORDER BY gold;
