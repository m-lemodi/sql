CREATE FUNCTION buy_can(_assistant VARCHAR(64), _can VARCHAR(32))
    RETURNS BOOLEAN AS

$$
BEGIN
    IF (SELECT credit FROM assistant WHERE login = _assistant) >= (SELECT price FROM can WHERE name = _can) AND(SELECT stock FROM can WHERE name = _can)>0 THEN
        UPDATE can SET stock = stock - 1 WHERE name = _can;
        UPDATE assistant SET credit = credit - (SELECT price FROM can WHERE name = _can) WHERE login = _assistant;
        INSERT INTO transaction VALUES (DEFAULT, _assistant, _can, now());
        RETURN TRUE;
    ELSE
        RETURN FALSE;
    END IF;
END
$$ LANGUAGE plpgsql;
