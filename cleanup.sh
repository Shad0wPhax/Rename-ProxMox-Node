#!/bin/bash

source <(grep = ~/pmrename.ini)
rm /etc/hostname.bak && rm /etc/hosts.bak
[ -e "/etc/mailname.bak" ] && rm /etc/mailname.bak
[ -e "/etc/postfix/main.cf.bak" ] && rm /etc/postfix/main.cf.bak
rm /var/lib/rrdcached/db/pve2-node/$OLD_HOSTNAME -r
rm /var/lib/rrdcached/db/pve2-storage/$OLD_HOSTNAME -r
rm /var/lib/rrdcached/db/pve2-$OLD_HOSTNAME -r
rm /etc/pve/nodes/$OLD_HOSTNAME -r
rm /etc/pve/storage.cfg.bak
rm ~/pmrename.ini
