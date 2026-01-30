#  Automated PostgreSQL installation and configuration

## Overview
This project automates the provisioning of PostgreSQL databases and users within the Stratos Datacenter environment. Instead of manual configuration, I developed a scriptable workflow to ensure consistency and security.

## Features
- **Secure Password Handling**: Uses `read -s` to prevent passwords from being visible on the screen or stored in terminal history.
- **Variable Injection**: Utilizes `psql` variables to keep the SQL logic separate from the environment data.
- **Idempotency**: Designed to be run as part of a larger deployment pipeline.

## Project Structure
- `db_setup.sql`: The SQL template for creating users and databases.
- `deploy.sh`: The Bash wrapper used to execute the deployment.

## Usage
Run the script from the terminal:
```bash
chmod +x deploy.sh
./deploy.sh