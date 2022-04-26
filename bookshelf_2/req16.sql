SELECT title, author, release FROM books WHERE release NOT BETWEEN '1900-01-01' AND '1999-12-31' ORDER BY release DESC, title ASC, author ASC;
