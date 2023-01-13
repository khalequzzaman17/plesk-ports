#!/bin/bash

# Check if user is root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

# Define necessary ports in an array
ports=(8443 8880 137/udp 138/udp 139/tcp 445/tcp 1194/udp 80 443 21 22 25 465 110 995 143 993 106 3306 1433 5432 443 53 53 8447 7000/tcp 7001/tcp 7002/tcp 7003/tcp 7004/tcp 7005/tcp 7006/tcp 7007/tcp 7008/tcp 7009/tcp 7010/tcp 3000/tcp)

# Open ports using firewalld-cmd
for port in "${ports[@]}"
do
    firewall-cmd --permanent --add-port=$port
done

# Reload firewalld-cmd
firewall-cmd --reload

# Open ports using iptables
for port in "${ports[@]}"
do
    iptables -A INPUT -p tcp --dport $port -j ACCEPT
    iptables -A INPUT -p udp --dport $port -j ACCEPT
done

# Save iptables
iptables-save > /etc/sysconfig/iptables
