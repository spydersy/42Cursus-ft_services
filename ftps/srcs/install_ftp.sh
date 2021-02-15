apk add vsftpd
touch /var/lib/ftp/test_file
mv /srcs/vsftpd.conf /etc/vsftpd/vsftpd.conf
rc-service vsftpd restart
