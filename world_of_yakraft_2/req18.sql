CREATE TABLE faction(id SERIAL PRIMARY KEY, color INTEGER, name VARCHAR(64));
INSERT INTO faction VALUES (1, 65280, 'Enlightened');
ALTER TABLE creature ADD faction_id INTEGER;

ALTER TABLE creature ADD CONSTRAINT faction_id FOREIGN KEY(faction_id) REFERENCES faction(id);
