# Automated 3-Tier Web Infrastructure Deployment

## 📌 Project Overview
This project demonstrates the automated deployment of a scalable 3-tier web architecture. I designed this to handle high-traffic WordPress environments by separating the web logic, database, and management layers.

The infrastructure is configured to work behind a Corporate Load Balancer (LBR) and uses automated shell and SQL scripts to ensure consistent deployments across multiple servers.

## 🏗️ Architecture
- **Management Tier:** Ansible 4.10.0 (Global Installation).
- **Web Tier:** Apache (HTTPD) running on custom **Port 8084** with PHP integration.
- **Database Tier:** MariaDB Server with secured remote access.

## 🚀 Key Features
- **Automated Configuration:** Used `sed` stream editing to reconfigure service ports without manual file editing.
- **Principle of Least Privilege:** Database users are restricted to specific schemas with remote access limited to the internal network.
- **Self-Verifying Scripts:** Deployment scripts include health-check logic to verify port binding and service status automatically.
- **Health Monitoring:** Included a PHP-based health check endpoint for Load Balancer integration.

## 📂 File Structure
- `scripts/install_ansible.sh`: Global setup of the automation engine.
- `scripts/deploy_web_tier.sh`: Automated Apache/PHP installer with port verification.
- `database/setup.sql`: Secure database and user provisioning.
- `web/healthcheck.php`: Connectivity test between Web and Database tiers.

## 🛠️ How to Use
1. **Provision the Database:**
   Run `mysql -u root -p < database/setup.sql` on the DB server.
2. **Deploy Web Servers:**
   Execute `sudo ./scripts/deploy_web_tier.sh` on all App hosts.
3. **Verify Connection:**
   Navigate to `http://<app-server-ip>:8084/healthcheck.php`.

