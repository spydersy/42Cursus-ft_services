# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    install_mysql.sh                                   :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abelarif <abelarif@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/11 19:06:06 by abelarif          #+#    #+#              #
#    Updated: 2021/04/13 10:47:32 by abelarif         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

apk add mysql mysql-client
mysql_install_db --user=mysql --datadir=/var/lib/mysql
/etc/init.d/mariadb setup
/etc/init.d/mariadb start
cp /srcs/my.cnf /etc/my.cnf
# mv /srcs/mariadb-server.cnf /etc/my.cnf.d/.
mysql_install_db --user=mysql --datadir=/var/lib/mysql

mysql -u root -e "CREATE USER 'abelarif'@'localhost' IDENTIFIED BY 'abelarif';"
mysql -u root -e "CREATE DATABASE wp_DB;"
mysql -u root wp_DB < /srcs/wp_DB.sql
mysql -u root -e "GRANT ALL PRIVILEGES ON wp_DB.* TO 'abelarif'@'localhost';"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'abelarif'@'localhost';"
mysql -u root -e "FLUSH PRIVILEGES;"