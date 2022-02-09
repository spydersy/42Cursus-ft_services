NGINX_COUNT=$(ps | grep nginx | grep -vc grep)
PHP_COUNT=$(ps | grep php-fpm7 | grep -vc grep)
if [ "$NGINX_COUNT" -eq 0 -o "$PHP_COUNT" -eq 0 ]
then
    exit 1
else
    exit 0
fi