CREATE VIEW view_artists AS 
    SELECT artist.name AS artist, 
    artist.birth_date AS birthdate,
    COUNT(music.art_id) AS songs
    FROM artist FULL JOIN music ON music.art_id = artist.id
    GROUP BY artist.name, artist.birth_date ORDER BY artist.name;

CREATE VIEW view_albums AS
    SELECT album.name AS album,
    COUNT(alb_id) AS songs,
    duration_to_string(CAST(SUM(duration) AS INT)) AS duration 
    FROM album FULL JOIN music_album ON music_album.alb_id = album.id
    LEFT JOIN music ON music.id = music_album.music_id
    GROUP BY album.name ORDER BY album.name;



CREATE VIEW view_songs AS
    SELECT title AS music,
    artist.name AS artist,
    duration_to_string(duration) AS duration
    FROM music JOIN artist ON art_id = artist.id
    ORDER BY title;
