# Rename ProxMox Node
Most of this script is sourced from https://i12bretro.github.io/tutorials/0633.html
This script will rename a ProxMox node and then move any existing VMs or LCXs to the new node. 

1. Login to ProxMox VE console, via SSH or Web UI.
2. run
   ```
   wget -O https://github.com/Shad0wPhax/Rename-ProxMox-Node/blob/main/renameNode.sh)https://github.com/Shad0wPhax/Rename-ProxMox-Node/blob/main/renameNode.sh | bash

Wait for ProxMox to reboot. 
