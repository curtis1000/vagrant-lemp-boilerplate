vagrant-lemp-boilerplate
========================

A vagrant boilerplate with ubuntu 14.04, nginx, php5-fpm, mysql server

####Setup
 - Ensure you have [Vagrant](http://vagrantup.com) installed.
 - Ensure you have the [Host Manager](https://github.com/smdahlen/vagrant-hostmanager) plugin.
 - Set the hostname for your project in [VagrantFile](/Vagrantfile).
 - Run: `vagrant up`.

####Configuring Services
I decided to keep a copy of any customized configuration file (ex: php.ini) in the _vagrant directory. As bootstrap.sh is running, I simply deleted the stock copy on the system and symlinked the customized copy that lives in the _vagrant directory. 
