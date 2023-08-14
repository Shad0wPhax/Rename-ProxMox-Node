#!/bin/bash

source <(grep = ~/pmrename.ini)
# update config files
sed -i.bak "s/nodes $OLD_HOSTNAME/nodes $NEW_HOSTNAME/gi" /etc/pve/storage.cfg
mv /etc/pve/nodes/$OLD_HOSTNAME/qemu-server/*.conf /etc/pve/nodes/$NEW_HOSTNAME/qemu-server/
mv /etc/pve/nodes/$OLD_HOSTNAME/lxc/*.conf /etc/pve/nodes/$NEW_HOSTNAME/lxc/
