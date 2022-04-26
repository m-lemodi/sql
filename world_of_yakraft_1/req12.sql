SELECT DISTINCT name FROM creature_template JOIN creature ON creature.gid = creature_template.id JOIN quest ON quest.creature_start = creature.id WHERE creature_start = creature_end ORDER BY name;
