echo "CREATE USER 'santoshganti'@'localhost' IDENTIFIED BY 'pass';
CREATE USER 'sysadmin'@'localhost' IDENTIFIED BY 'pass';
GRANT ALL PRIVILEGES ON * . * TO 'root'@'%' IDENTIFIED BY 'pass';
GRANT ALL PRIVILEGES ON * . * TO 'santoshganti'@'%' IDENTIFIED BY 'pass';
GRANT ALL PRIVILEGES ON * . * TO 'sysadmin'@'%' IDENTIFIED BY 'pass';
FLUSH PRIVILEGES;" > /mnt/user/appdata/onlyoffice/mysql/initdb/setup.sql