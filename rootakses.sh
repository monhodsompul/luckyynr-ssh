#!/bin/bash

# Update package list and upgrade all packages
sudo apt-get update -y
sudo apt-get upgrade -y

# Install OpenSSH Server
sudo apt-get install -y openssh-server

# Enable SSH service to start on boot
sudo systemctl enable ssh

# Start SSH service
sudo systemctl start ssh

# Set root password
echo "root:rex" | sudo chpasswd

# Permit root login via SSH
sudo sed -i 's/^#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
sudo sed -i 's/^PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# Restart SSH service to apply changes
sudo systemctl restart ssh

echo "SSH has been installed and configured. Root login is enabled with password 'rex'."
