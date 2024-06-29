#!/bin/bash

apt update -y

apt install wget -y

apt install ssh-server -y

systemctl start sshd

passwd rex1024

mod_sshd="https://raw.githubusercontent.com/monhodsompul/luckyynr-ssh/main/rootakses.sh"
wget -O /etc/ssh/sshd_config $mod_sshd

systemctl restart sshd
