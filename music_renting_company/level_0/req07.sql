DELETE FROM album WHERE name 
    LIKE '%P%P%' OR 
    name LIKE '%mm%' OR 
    name LIKE '%&%' OR
    MOD(LENGTH(name), 7) = 0;
