apk add vsftpd
mkdir /srv/ftp
mv /srcs/vsftpd.conf /etc/vsftpd/vsftpd.conf
chown nobody:nogroup /srv/ftp
rc-service vsftpd restart
rc-update add vsftpd
