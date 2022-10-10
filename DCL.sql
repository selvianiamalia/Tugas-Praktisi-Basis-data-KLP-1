-- Membuat user baru
CREATE USER 'DosenSisfor'@'localhost' IDENTIFIED BY '12345';

-- Memberi hak akses ke user 
GRANT ALL PRIVILEGES 
ON db_praktisiSisfo
TO 'DosenSisfor'@'localhost';

# Memberi akses SELECT kepada semua user
GRANT SELECT
ON db_praktisiSisfo
TO '*'@'localhost';