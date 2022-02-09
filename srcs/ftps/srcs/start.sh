mkdir /root/empty
mkdir /root/not_empty
touch /root/not_empty/file
touch /root/emptyfile
touch  /root/file
echo "helllllllllloo !" > /root/file
rc-status
rc-service vsftpd restart
rc-update add vsftpd
top