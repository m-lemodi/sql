CREATE OR REPLACE FUNCTION list_assistant_transactions(_assistant VARCHAR(64))
RETURNS TABLE (can VARCHAR(32), "timestamp" TIMESTAMP) AS
$$
BEGIN
    RETURN QUERY
    SELECT transaction.can, transaction.timestamp
    AS list_assistant_transactions
    FROM transaction
    WHERE assistant = _assistant
    ORDER BY transaction.timestamp, transaction.can;
END;
$$ LANGUAGE plpgsql;
