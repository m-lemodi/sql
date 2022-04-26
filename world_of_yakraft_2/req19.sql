CREATE TABLE item (
        id SERIAL PRIMARY KEY, 
        name VARCHAR(64), 
        rarity INTEGER,
        icon_id INTEGER);

CREATE TABLE inventory (
        id SERIAL PRIMARY KEY,
        item_id INTEGER,
        character_id INTEGER,
        FOREIGN KEY (item_id) REFERENCES item(id),
        FOREIGN KEY (character_id) REFERENCES character(id));

CREATE TABLE loots (
        id SERIAL PRIMARY KEY,
        item_id INTEGER,
        creature_gid INTEGER,
        FOREIGN KEY (item_id) REFERENCES item(id),
        FOREIGN KEY (creature_gid) REFERENCES creature_template(id));

