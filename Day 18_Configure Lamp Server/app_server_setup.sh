#!/bin/bash

# Install software
sudo yum install -y httpd php php-mysqlnd

# Change Port to 8084
sudo sed -i 's/Listen 80/Listen 8084/g' /etc/httpd/conf/httpd.conf

#Restart and Enable The Service
sudo systemctl restart httpd
sudo systemctl enable httpd

