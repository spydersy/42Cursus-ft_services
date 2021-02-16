wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-english.tar.gz
tar xvf phpMyAdmin-5.0.4-english.tar.gz
mv phpMyAdmin-5.0.4-english /var/www/phpmyadmin
rm -rf php*.tar.gz
mkdir -p /var/lib/phpmyadmin/tmp
chmod 777 /var/lib/phpmyadmin/tmp
mv /srcs/config.inc.php /var/www/phpmyadmin/.