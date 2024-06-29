#!/bin/bash

apt update -y

apt install wget -y

apt install ssh -y

service ssh start

passwd rex1024

mod_sshd="https://raw.githubusercontent.com/monhodsompul/luckyynr-ssh/main/rootakses.sh"
wget -O /etc/ssh/sshd_config $mod_sshd

service ssh restart
