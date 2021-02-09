apk add openrc
apk add nginx
rc-status
apk update && apk upgrade
mkdir /run/openrc/
touch /run/openrc/softlevel

mkdir /run/nginx
nginx
echo "<h1>Hello world!</h1>" > /var/www/localhost/htdocs/index.html;

mv /srcs/default.conf /etc/nginx/conf.d/.
apk add openssl;

openssl req -x509 -nodes -days 365 -subj "/C=CA/ST=QC/O=Company, Inc./CN=localhost" \
-addext "subjectAltName=DNS:localhost" -newkey rsa:2048                             \
-keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt;
nginx -s reload
