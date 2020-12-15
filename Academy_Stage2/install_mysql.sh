#!/bin/bash

apt-get -y update

#logger "Installing WordPress"
logger "Installing MySQL"

# Set up a silent install of MySQL
dbpass=$1

export DEBIAN_FRONTEND=noninteractive
echo mysql-server-5.6 mysql-server/root_password password $dbpass | debconf-set-selections
echo mysql-server-5.6 mysql-server/root_password_again password $dbpass | debconf-set-selections

# Install the LAMP stack and WordPress
#apt-get -y install apache2 mysql-server php5 php5-mysql wordpress
# Install MySQL
apt-get -y install mysql-server

# Setup WordPress
#gzip -d /usr/share/doc/wordpress/examples/setup-mysql.gz
#bash /usr/share/doc/wordpress/examples/setup-mysql -n wordpress localhost

# Crear la bbdd 

#ln -s /usr/share/wordpress /var/www/html/wordpress
#mv /etc/wordpress/config-localhost.php /etc/wordpress/config-default.php

# Restart Apache
#apachectl restart

#logger "Done installing WordPress; open /wordpress to configure"
logger "Done installing MySQL"