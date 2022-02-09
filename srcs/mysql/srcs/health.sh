MARIADB_COUNT=$(ps | grep mariadb | grep -vc grep)
if [ "$MARIADB_COUNT" -eq 0 ]
then
    exit 1
else
    exit 0
fi