apk update
apk add openrc
mkdir /run/openrc
rc-status
apk add libc6-compat
wget https://dl.influxdata.com/telegraf/releases/telegraf-1.18.0_linux_amd64.tar.gz
tar xf telegraf-1.18.0_linux_amd64.tar.gz
mv /srcs/telegraf.conf /telegraf-1.18.0/etc/telegraf/
