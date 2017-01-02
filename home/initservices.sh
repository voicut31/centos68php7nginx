echo "Start nginx"

service nginx start

echo "Start Php Fpm"

service php-fpm start

echo "Start mysql"

service mysqld start

echo "Start mongo"

service mongod start

