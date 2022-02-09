VSFTPD_COUNT=$(ps | grep vsftpd | grep -vc grep)
if [ "$VSFTPD_COUNT" -eq 0 ]
then
    exit 1
else
    exit 0
fi