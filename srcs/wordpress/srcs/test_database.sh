mysql_install_db --user=mysql --datadir=/var/lib/mysql
rc-service mariadb restart
mysql -u root -e "CREATE USER 'abelarif'@'localhost' IDENTIFIED BY 'abelarif';"
mysql -u root -e "CREATE DATABASE wp_DB;"
mysql -u root -e "GRANT ALL PRIVILEGES ON wp_DB.* TO 'abelarif'@'localhost';"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'abelarif'@'localhost';"
mysql -u root wp_DB < /srcs/wp_DB.sql
mysql -u root -e "FLUSH PRIVILEGES;"


