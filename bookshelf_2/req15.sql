SELECT author AS name, COUNT(title) || CASE WHEN COUNT(title) = 1 THEN ' book' ELSE ' books' END AS stocks FROM books GROUP BY author ORDER BY name;
