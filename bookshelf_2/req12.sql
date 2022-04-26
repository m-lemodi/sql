SELECT title, author AS name FROM books JOIN authors ON name = author WHERE release > death_date ORDER BY title ASC, name ASC;
