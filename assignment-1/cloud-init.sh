#!/bin/bash
apt update -y
apt install apache2 -y
apt install mysql-server -y
apt install php libapache2-mod-php php-mysql -y

systemctl enable apache2
systemctl start apache2

cd /var/www/html
rm index.html
wget https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz
mv wordpress/* .
rm -rf wordpress latest.tar.gz

chown -R www-data:www-data /var/www/html