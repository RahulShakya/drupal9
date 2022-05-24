#!/bin/bash
sudo chown -R :www-data /var/www/html
sudo rm /etc/httpd/conf/httpd.conf
sudo cp /var/www/html/conf/httpd.conf /etc/httpd/conf/httpd.conf
cd /var/www/html
sudo composer update
sudo chmod 777 -R storage/
sudo chmod 777 -R bootstrap/
php artisan cache:clear
php artisan config:clear