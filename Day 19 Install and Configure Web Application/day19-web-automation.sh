#!/bin/bash

# --- PART 1: FROM JUMP HOST ---
# Transferring site backups to the App Server 3 staging area
scp -r /home/thor/news tony@stapp03:/tmp/
scp -r /home/thor/demo tony@stapp03:/tmp/

# --- PART 2: ON STAPP03 (App Server) ---
# 1. Update Apache Port to 5003
sudo sed -i 's/Listen 80/Listen 5003/' /etc/httpd/conf/httpd.conf

# 2. Deploy folders from staging to web root
sudo mv /tmp/news /var/www/html/
sudo mv /tmp/demo /var/www/html/

# 3. Apply 755 Permissions & Ownership
sudo chmod -R 755 /var/www/html/
sudo chown -R apache:apache /var/www/html/

# 4. Restart and Verify
sudo systemctl restart httpd
curl -I http://localhost:5003/news/