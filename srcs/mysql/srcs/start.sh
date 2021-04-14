#!/bin/sh


rc-status
mv /srcs/my.cnf /etc/my.cnf
/etc/init.d/mariadb setup
# mysql_install_db --user=mysql --datadir=/var/lib/mysql
rc-service mariadb start
mariadb -u root -e "CREATE DATABASE wp_DB;"
mariadb -u root -e "CREATE DATABASE phpmyadmin;"
mariadb -u root wp_DB < /srcs/wp_DB.sql
mariadb -u root phpmyadmin < /srcs/phpmyadmin.sql
mariadb -u root -e "CREATE USER 'abelarif'@'%' IDENTIFIED BY 'abelarif';"
mariadb -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'abelarif'@'%';";
mariadb -u root -e "FLUSH PRIVILEGES;";

top
