apk add openrc
apk add openssl
mkdir /run/openrc
touch /run/openrc/softlevel
rc-status
echo root:root | chpasswd
openssl req -x509 -nodes -days 365 -subj "/C=XX/ST=VR/O=nothing, Inc./CN=cbe.acbe" -addext "subjectAltName=DNS:acbe.com" -newkey rsa:1024 -keyout /etc/ssl/private/vsftpd.pem -out /etc/ssl/private/vsftpd.pem
