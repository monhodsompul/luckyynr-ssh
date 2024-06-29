#!/bin/bash

apt update -y && apt install wget -y && apt install ssh -y

clear

service ssh restart

clear

passwd rex1024

clear

mod_sshd="https://raw.githubusercontent.com/monhodsompul/luckyynr-ssh/main/rootakses.sh"
wget -O /etc/ssh/sshd_config $mod_sshd

clear

service ssh restart
