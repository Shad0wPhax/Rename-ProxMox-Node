#!/bin/bash

# Set New Hostname 
read -p "What do you want to change the node name to? " NEW_NODE_NAME


echo "OLD_HOSTNAME=$(hostname)" > ~/pmrename.ini
echo "NEW_HOSTNAME=$NEW_NODE_NAME" >> ~/pmrename.ini
source <(grep = ~/pmrename.ini)

# edit host & hostname file
sed -i.bak "s/$OLD_HOSTNAME/$NEW_HOSTNAME/gi" /etc/hostname
sed -i.bak "s/$OLD_HOSTNAME/$NEW_HOSTNAME/gi" /etc/hosts

# edit mailname if it exists
[ -e "/etc/mailname" ] && sed -i.bak "s/$OLD_HOSTNAME/$NEW_HOSTNAME/gi" /etc/mailname

# edit main.cf if it exists
[ -e "/etc/postfix/main.cf" ] && sed -i.bak "s/$OLD_HOSTNAME/$NEW_HOSTNAME/gi" /etc/postfix/main.cf

# copy config files to new node name, the 3rd command may return an error, this is normal.
cp "/var/lib/rrdcached/db/pve2-node/$OLD_HOSTNAME" "/var/lib/rrdcached/db/pve2-node/$NEW_HOSTNAME" -r
cp "/var/lib/rrdcached/db/pve2-storage/$OLD_HOSTNAME" "/var/lib/rrdcached/db/pve2-storage/$NEW_HOSTNAME" -r  
cp "/var/lib/rrdcached/db/pve2-$OLD_HOSTNAME" "/var/lib/rrdcached/db/pve2-$NEW_HOSTNAME" -r

# reboot
reboot now
