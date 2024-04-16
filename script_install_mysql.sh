#!/bin/bash

# Update package index
sudo apt update

# Install MySQL server
sudo apt install -y mysql-server

# Start MySQL service
sudo systemctl start mysql

# Enable MySQL to start on system boot
sudo systemctl enable mysql

# Secure MySQL installation (optional but recommended)
sudo mysql_secure_installation

# Access MySQL shell
sudo mysql << EOF
CREATE DATABASE youssef;
CREATE USER 'yo'@'localhost' IDENTIFIED BY 'you123';
GRANT ALL PRIVILEGES ON youssef.* TO 'yo'@'localhost';
FLUSH PRIVILEGES;
EOF

# Display message
echo "MySQL setup completed successfully!"

