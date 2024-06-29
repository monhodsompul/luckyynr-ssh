#!/bin/bash

echo -e "rex" | passwd root

mod_sshd="https://raw.githubusercontent.com/DotAja/Dot-Akses-SSH/main/sshd_config"
mod_benner="https://raw.githubusercontent.com/DotAja/Dot-Akses-SSH/main/benner"

wget -O /etc/ssh/sshd_config $mod_sshd
wget -O /etc/benner $mod_benner

chmod +x /etc/benner

echo 'clear' >> ~/.bashrc
echo '/etc/benner' >> ~/.bashrc

systemctl restart sshd

public_ip=$(curl -s ifconfig.me)

echo "USER : root"
echo "IP AKSES : $public_ip"
echo "PASSWORD : rex"
