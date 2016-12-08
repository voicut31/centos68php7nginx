echo "Start nginx"

service nginx start

echo "Start Php Fpm"

service php-fpm start

echo "Start mysql"

service mysqld start

echo "Start memcache"

service memcached start

echo "Start Sphinx Search"

service searchd start

echo "Start mongo"

service mongod start


