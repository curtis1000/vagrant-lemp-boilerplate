#!/usr/bin/env bash

# update package list
apt-get update

# install and start mysql server
debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password password mysqlpassword'
debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password_again password mysqlpassword'
apt-get install -y mysql-server

# install php
apt-get install -y php5-fpm php5-mysql

# configure php
rm /etc/php5/fpm/pool.d/www.conf
ln -s /vagrant/_vagrant/etc/php5/fpm/pool.d/www.conf /etc/php5/fpm/pool.d/www.conf

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

# start nginx
service nginx start

# utilities
apt-get install -y vim




