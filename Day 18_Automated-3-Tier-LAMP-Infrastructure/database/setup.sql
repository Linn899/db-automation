_-- Database and User Provisioning
CREATE Database production_db;
-- Creating a service user for the application tier
-- The '%' allows the web servers to connect remotely
CREATE USER 'db_service_user'@'%' IDENTIFIED BY 'PASSWORD123!';
-- Granting standard application permissions
GRANT ALL PRIVILEGES ON production_db.* TO 'db_service_user'@'%';

FLUSH PRIVILEGES;
