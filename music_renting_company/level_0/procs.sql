CREATE OR REPLACE FUNCTION duration_to_string(duration INT)
    RETURNS VARCHAR(16) AS
$$
BEGIN
    IF duration < 1 OR duration IS NULL
    THEN return '0:00';
    ELSIF MOD(duration, 60) < 10
    THEN return concat(duration / 60, ':0', MOD(duration, 60));
    ELSE return concat(duration / 60, ':', MOD(duration, 60));
    END IF;
END;
$$ LANGUAGE plpgsql;
