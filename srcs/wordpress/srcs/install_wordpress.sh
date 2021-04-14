wget http://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
rm -rf latest.tar.gz
mv /var/www/localhost/htdocs/wordpress/wp-config-sample.php /var/www/localhost/htdocs/wordpress/wp-config-sample.php.or

mv wordpress /var/www/localhost/htdocs/.
mv /srcs/wp-config.php /var/www/localhost/htdocs/wordpress/.