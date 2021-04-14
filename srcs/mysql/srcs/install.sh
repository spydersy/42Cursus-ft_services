#!/bin/sh

apk update
apk add openrc
apk add mariadb mariadb-client

mkdir /run/openrc
touch /run/openrc/softlevel
rc-status

mysql_install_db --user=mysql --datadir=/var/lib/mysql