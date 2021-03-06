#!/usr/bin/env bash

# name input arguments
mysql_root_password=$1

# update package list
apt-get update

# install and start mysql server
debconf-set-selections <<< "mysql-server-5.5 mysql-server/root_password password $mysql_root_password"
debconf-set-selections <<< "mysql-server-5.5 mysql-server/root_password_again password $mysql_root_password"
apt-get install -y mysql-server

# install php
apt-get install -y php5-common php5-cli php5-fpm php5-mysql

# configure php
rm /etc/php5/fpm/pool.d/www.conf
ln -s /vagrant/_vagrant/etc/php5/fpm/pool.d/www.conf /etc/php5/fpm/pool.d/www.conf

rm /etc/php5/fpm/php.ini
ln -s /vagrant/_vagrant/etc/php5/fpm/php.ini /etc/php5/fpm/php.ini

# restart php
service php5-fpm restart

# set permission on php5-fpm unix socket
chmod 666 /var/run/php5-fpm.sock

# install nginx
apt-get install -y nginx

# configure nginx
rm /etc/nginx/sites-available/default
ln -s /vagrant/_vagrant/etc/nginx/sites-available/default /etc/nginx/sites-available/default

# set the nginx document root
rm -rf /usr/share/nginx/html
ln -s /vagrant/public /usr/share/nginx/html

# restart nginx
service nginx restart

# utilities
apt-get install -y vim
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin & mv /usr/local/bin/composer.phar /usr/local/bin/composer



