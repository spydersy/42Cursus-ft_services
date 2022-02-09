apk update && apk upgrade
apk add openrc
apk add nginx
apk add openssh
apk add openssl;

rc-status
mkdir /run/openrc/
touch /run/openrc/softlevel

mkdir /run/nginx
nginx
echo "<h1>Hello ft_Services!</h1>" > /var/www/localhost/htdocs/index.html;


mv /srcs/default.conf /etc/nginx/conf.d/.

openssl req -x509 -nodes -days 365 -subj "/C=CA/ST=QC/O=Company, Inc./CN=localhost" \
-addext "subjectAltName=DNS:localhost" -newkey rsa:2048                             \
-keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt;
mkdir /root/.ssh
chmod 0700 /root/.ssh
ssh-keygen -A
echo root:root | chpasswd
mv /srcs/sshd_config /etc/ssh/.
nginx -s reload
rc-service sshd restart