vagrant-lemp-boilerplate
========================

A vagrant boilerplate with ubuntu 14.04, nginx, php5-fpm, mysql server

####Setup
 - Ensure you have [Vagrant](http://vagrantup.com) installed and up to date.
 - Ensure you have the [Host Manager](https://github.com/smdahlen/vagrant-hostmanager) plugin.
 - Set the hostname and the MySQL Server root password in [VagrantFile](/Vagrantfile).
 - Run: `vagrant up`.

####Configuring Services
I decided to keep a copy of any customized configuration file (ex: php.ini) in the _vagrant directory. As provisioner.sh is running, the script deletes the stock copy on the system, and in its place, creates a symlink to the customized copy that lives in the _vagrant directory. 
