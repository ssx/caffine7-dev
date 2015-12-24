#!/bin/bash
/usr/bin/mysqld_safe &
sleep 10s

# set permissions on www directory & storage
chown -R www-data:www-data /www
mkdir -p /www/bootstrap/cache -p /www/storage/logs
chmod -R 777 /www/storage www/bootstrap/cache

# make sure the logfile exists before we try to tail it
/bin/touch /var/log/php7.0-fpm.log

mysqladmin -u root password vagrant
mysql -uroot -pvagrant -e "GRANT ALL PRIVILEGES ON *.* TO 'vagrant'@'%' IDENTIFIED BY 'vagrant' WITH GRANT OPTION; FLUSH PRIVILEGES;"
mysql -uroot -pvagrant -e "CREATE DATABASE vagrant; GRANT ALL PRIVILEGES ON vagrant.* TO 'vagrant'@'localhost' IDENTIFIED BY 'vagrant'; FLUSH PRIVILEGES;"
killall mysqld

# start all the services
/usr/local/bin/supervisord -n
