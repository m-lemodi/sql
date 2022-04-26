SELECT DISTINCT title FROM quest JOIN character_quests ON quest.id = character_quests.quest_id WHERE character_quests.complete = 1 AND character_quests.character_id = 1;
