#!/bin/bash
sudo chown -R :www-data /var/www/html
sudo rm /etc/httpd/conf/httpd.conf
sudo cp /var/www/html/conf/httpd.conf /etc/httpd/conf/httpd.conf
sudo systemctl restart httpd
cd /var/www/html
sudo composer update