# DevOps Lab Day 20: Nginx & PHP-FPM Unix Socket

## Goal
Configure a flexible PHP environment across any App Server (stapp01-03) using port 8094 and a high-performance Unix Socket.

## Why Unix Sockets?
Compared to TCP ports (localhost:9000), Unix Sockets are faster because they stay within the kernel memory and avoid network overhead.
## 📋 Execution Log (Command History)


| Step | Command | Why? |
| :--- | :--- | :--- |
| **1** | `sudo dnf install -y nginx php-fpm` | Install the web server and PHP engine. |
| **2** | `sudo vi /etc/php-fpm.d/www.conf` | Switch PHP from Port 9000 to the Unix Socket. |
| **3** | `sudo mkdir -p /var/run/php-fpm` | Create the directory for the communication socket. |
| **4** | `sudo chown nginx:nginx /var/run/php-fpm` | Give Nginx permission to access the socket file. |
| **5** | `sudo vi /etc/nginx/nginx.conf` | Configure Port 8094 and the FastCGI bridge. |
| **6** | `sudo nginx -t` | Validate syntax to ensure no configuration errors. |
| **7** | `sudo systemctl restart php-fpm nginx` | Apply changes and start the services. |
| **8** | `curl -I http://localhost:8094/index.php` | Verify the connection (Expect HTTP 200 OK). |

## Troubleshooting
If you see a `502 Bad Gateway`, check:
1. Does `/var/run/php-fpm/default.sock` exist?
2. Does the `nginx` user own that directory?
