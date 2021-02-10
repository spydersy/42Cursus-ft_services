apk add openrc
apk add nginx
rc-status
apk update && apk upgrade
mkdir /run/openrc/
touch /run/openrc/softlevel

mkdir /run/nginx
nginx
echo "<h1>TEST PHPMYADMIN!</h1>" > /var/www/localhost/htdocs/index.html;

mv /srcs/default.conf /etc/nginx/conf.d/.
nginx -s reload
