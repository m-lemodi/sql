CREATE FUNCTION add_book(title VARCHAR(64),
        author VARCHAR(64),
        genre VARCHAR(64),
        release_date DATE)
RETURNS BOOLEAN
LANGUAGE SQL

BEGIN
INSERT INTO books (title, author,genre,release_date) VALUES(title, author, genre, release_date); 
RETURN FOUND;
END

