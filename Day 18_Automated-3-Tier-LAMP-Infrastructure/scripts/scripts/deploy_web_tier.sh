#!/bin/bash
# Description: Automated deployment of the Web Tier

# Install required packages
sudo yum install -y httpd php php-mysqlnd

# Update Apache to listen on a non-standard port (8084)
# This is often required when behind a Load Balancer
sudo sed -i 's/Listen 80/Listen 8084/g' /etc/httpd/conf/httpd.conf

# Start services
sudo systemctl enable --now httpd

echo "Web tier deployment complete on port 8084."