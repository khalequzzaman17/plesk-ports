## Plesk Firewall Port Opener

This script is used to open all the necessary ports for Plesk on a Linux server. It includes ports for Plesk, Samba, VPN, web server, FTP, SSH, mail services, database servers, and licensing server connections. It also includes ports for LSWS, NGINX, and Node.js.

### Usage

```
curl -Ls https://raw.githubusercontent.com/khalequzzaman17/plesk-ports/main/app.sh | bash
```

> Copy and execute the above command.

The script will open all the necessary ports and configure the firewall using both firewall-cmd and iptables.

Verify that the ports have been opened by checking the output of ‘firewall-cmd --list-all’ and ‘iptables -L’.

Note: The script will check if the user is root, if not it will prompt the user to run the script as root.

List of ports opened by the script
* TCP 80
* TCP 443
* TCP 21
* TCP 22
* TCP 25, TCP 465
* TCP 110, TCP 995
* TCP 143, TCP 993
* TCP 106
* TCP 3306
* TCP 1433
* TCP 5432
* UDP 53, TCP 53
* TCP 8447
* TCP 8443
* TCP 8880
* UDP 137, UDP 138, TCP 139, TCP 445
* UDP 1194
* TCP 7080, TCP 8088, TCP 8888, TCP 8080
* TCP 3000

This script is open-source, you can modify the script as per your needs.

