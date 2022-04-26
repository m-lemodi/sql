SELECT assistant, sum(price) AS price FROM transaction FULL JOIN can ON name = can WHERE assistant IS NOT NULL GROUP BY assistant ORDER BY price DESC LIMIT 3;
