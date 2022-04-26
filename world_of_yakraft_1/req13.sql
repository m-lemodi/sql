SELECT DISTINCT name FROM creature_template WHERE creature_template.id NOT IN (SELECT gid FROM creature);
