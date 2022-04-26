INSERT INTO music_album VALUES(
        DEFAULT,
        (SELECT id FROM music WHERE title = 'Le Petit Pain au Chocolat'),
        (SELECT id FROM album WHERE name = 'Joe Dassin (Les Champs-Élysées)'),
        2);

INSERT INTO music_album VALUES(
        DEFAULT,
        (SELECT id FROM music WHERE title = 'Comment lui dire'),
        (SELECT id FROM album WHERE name = 'France Gall'),
        1);

INSERT INTO music_album VALUES(
        DEFAULT,
        (SELECT id FROM music WHERE title = E'C\'est ta chance'),
        (SELECT id FROM album WHERE name = 'Traces'),
        3);
