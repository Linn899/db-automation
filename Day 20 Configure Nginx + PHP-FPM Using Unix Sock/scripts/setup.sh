#!/bin/bash

# 1. Install Services
sudo dnf install -y nginx php-fpm

# 2. Create and Secure Socket Directory
# Using -p ensures it works even if the folder exists
sudo mkdir -p /var/run/php-fpm
sudo chown nginx:nginx /var/run/php-fpm

# 3. Enable and Restart
sudo systemctl enable nginx php-fpm
sudo systemctl restart php-fpm
sudo systemctl restart nginx

# 4. Final Syntax Check
sudo nginx -t