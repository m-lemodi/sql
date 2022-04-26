CREATE TABLE population
(
    id SERIAL,
    date TIMESTAMP,
    old_population BIGINT,
    new_population BIGINT
);

CREATE OR REPLACE FUNCTION eng()
RETURNS TRIGGER AS
$$
BEGIN
    INSERT INTO population VALUES (DEFAULT, now(), OLD.population, NEW.population);
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER store_earth_population_updates
AFTER UPDATE ON planet
FOR EACH ROW WHEN (OLD.name = 'Earth') EXECUTE PROCEDURE eng();

CREATE VIEW view_earth_population_evolution AS
SELECT id, to_char(date, 'DD/MM/YYYY HH24:MI:SS') AS date, old_population AS "old population", new_population AS "new population"
FROM population
ORDER BY date;
