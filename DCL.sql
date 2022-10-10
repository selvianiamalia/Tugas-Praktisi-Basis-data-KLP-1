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

# Cek status hak akses user
SHOW GRANTS FOR 'DosenSisfor'@'localhost';

# Menghapus hak akses user
REVOKE INSERT
ON db_praktisiSisfo
FROM 'DosenSisfor'@'localhost';
