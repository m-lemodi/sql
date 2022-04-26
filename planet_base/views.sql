CREATE OR REPLACE VIEW view_nearest_planet_to_sun (planet) AS
    SELECT p.name
    FROM planet AS p 
    JOIN planetary_system AS ps ON p.id_system = ps.id
    WHERE ps.star = 'Sun'
    ORDER BY period
    LIMIT 3;

CREATE OR REPLACE VIEW view_nb_satellite_per_planet AS
    SELECT p.name AS planet, COUNT(s.id) AS "number of satellites"
    FROM planet as p LEFT JOIN satellite AS s ON s.id_planet = p.id AND s.radius >= 500 
    GROUP BY planet
    ORDER BY count(s.id), p.name;

CREATE OR REPLACE VIEW view_average_period (system, average_period) AS 
    SELECT ps.name, COALESCE(ROUND(AVG(p.period),2), NULL, 0) as avgp
    FROM planetary_system AS ps LEFT JOIN planet AS p ON p.id_system = ps.id 
    GROUP BY ps.name
    ORDER BY avgp, ps.name;

CREATE OR REPLACE VIEW view_biggest_entities AS
    (SELECT 'planet' AS type, ps.name AS system, p.name AS name, p.radius AS radius
    FROM planet AS p 
    JOIN planetary_system AS ps ON p.id_system = ps.id)
    UNION 
    (SELECT 'satellite' as type, ps.name AS system, s.name AS name, s.radius AS radius
    FROM satellite AS s 
    JOIN planet AS p ON s.id_planet = p.id 
    JOIN planetary_system AS ps ON p.id_system = ps.id)
    ORDER BY radius DESC, name
    LIMIT 10;
