CREATE USER 'DosenSisfor'@'localhost' IDENTIFIED BY '12345';

GRANT ALL PRIVILEGES 
ON db_praktisiSisfo
TO 'DosenSisfor'@'localhost';

GRANT SELECT 
ON db_praktisiSisfo
TO '*'@'localhost';