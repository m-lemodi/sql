CREATE OR REPLACE FUNCTION space_travel(origin INT, destination INT, quantity BIGINT)
RETURNS boolean AS
$$
BEGIN
    IF ((origin IN
            (SELECT id FROM planet WHERE id_system IN (SELECT id_system FROM planet WHERE id = destination)))
            AND quantity >= 0
            AND (SELECT (SELECT population - quantity FROM planet WHERE id = origin) >= 0))
            THEN
        UPDATE planet SET population = population - quantity WHERE planet.id = origin;
        UPDATE planet SET population = population + quantity WHERE planet.id = destination;
        RETURN TRUE;
    ELSE
        RETURN FALSE;
    END IF;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION list_satellite_inf_750(syst INT)
RETURNS TABLE(satellite VARCHAR(32), planet VARCHAR(32), radius INT) AS
$$
BEGIN
    RETURN QUERY
    SELECT s.name AS satellite, p.name AS planet, s.radius AS radius
    FROM satellite AS s JOIN planet AS p ON s.id_planet = p.id
    WHERE s.radius <= 750 AND p.id_system = syst
    ORDER BY p.name, s.radius DESC, s.name;
END;
$$ LANGUAGE plpgsql;
