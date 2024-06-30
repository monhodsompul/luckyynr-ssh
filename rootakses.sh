#!/bin/bash

# Update package list and upgrade all packages
apt-get update -y
apt-get upgrade -y

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

apt install tmate -y

tmate
