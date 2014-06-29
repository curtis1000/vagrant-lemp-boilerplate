vagrant-lemp-boilerplate
========================

A vagrant boilerplate with ubuntu 14.04, nginx, php5-fpm, mysql server

####Setup
 - Ensure you have [Vagrant](http://vagrantup.com) installed.
 - Ensure you have the [Host Manager](https://github.com/smdahlen/vagrant-hostmanager) plugin.
 - Set the hostname for your project in [VagrantFile](/Vagrantfile).
 - Set the MySQL Server root password in [bootstrap.sh](/_vagrant/bootstrap.sh).
 - Run: `vagrant up`.

####Configuring Services
I decided to keep a copy of any customized configuration file (ex: php.ini) in the _vagrant directory. As bootstrap.sh is running, the script deletes the stock copy on the system and in its place, creates a symlink to the customized copy that lives in the _vagrant directory. 
