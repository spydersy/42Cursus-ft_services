NGINX_COUNT=$(ps | grep nginx | grep -vc grep)
sshd_COUNT=$(ps | grep sshd | grep -vc grep)
if [ "$NGINX_COUNT" -eq 0 -o "$SSHD_COUNT" -eq 0 ]
then
    exit 1
else
    exit 0
fi