INSERT INTO music VALUES (
        DEFAULT, 
        'Le Petit Pain au Chocolat',
        (SELECT id FROM artist WHERE name = 'Joe DASSIN'), 
        210);

INSERT INTO music VALUES (
        DEFAULT, 
        'Comment lui dire',
        (SELECT id FROM artist WHERE name = 'France GALL'),
        210);

INSERT INTO music VALUES (
        DEFAULT, 
        E'C\'est ta chance',
        (SELECT id FROM artist WHERE name = 'Jean-Jacques GOLDMAN'),
        391);

INSERT INTO music VALUES (
        DEFAULT, 
        'Siffler sur la colline',
        (SELECT id FROM artist WHERE name = 'Joe DASSIN'),
        152);
