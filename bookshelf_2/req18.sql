CREATE FUNCTION add_author(name VARCHAR(64),
        birth_date DATE,
        death_date DATE,
        country VARCHAR(64))
RETURNS BOOLEAN 
LANGUAGE SQL

BEGIN 
INSERT INTO authors (name, birth_date, death_date, country) VALUES(name, birth_date, death_date, country); 
RETURN FOUND; 
END

