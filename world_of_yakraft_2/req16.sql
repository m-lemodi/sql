DELETE FROM character WHERE NOW() - lastconn > '31556926';

