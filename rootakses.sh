#!/bin/bash

# Update package list and upgrade all packages
sudo apt-get update -y
sudo apt-get upgrade -y

# Install OpenSSH Server
apt-get install -y openssh-server

# Enable SSH service to start on boot
service ssh enable

# Start SSH service
service ssh start

# Set root password
echo "root:rex" | chpasswd

# Permit root login via SSH
sed -i 's/^#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
sed -i 's/^PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# Restart SSH service to apply changes
service ssh restart

echo "SSH has been installed and configured. Root login is enabled with password 'rex'."


echo "██████╗ ███████╗██╗  ██╗ ██╗ ██████╗ ██████╗ ██╗  ██╗" > /etc/motd
echo "██╔══██╗██╔════╝╚██╗██╔╝███║██╔═████╗╚════██╗██║  ██║" > /etc/motd
echo "██████╔╝█████╗   ╚███╔╝ ╚██║██║██╔██║ █████╔╝███████║" > /etc/motd
echo "██╔══██╗██╔══╝   ██╔██╗  ██║████╔╝██║██╔═══╝ ╚════██║" > /etc/motd
echo "██║  ██║███████╗██╔╝ ██╗ ██║╚██████╔╝███████╗     ██║" > /etc/motd
echo "╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝ ╚═╝ ╚═════╝ ╚══════╝     ╚═╝" > /etc/motd
echo "Create By luckyynr" >> /etc/motd

sudo systemctl restart ssh
