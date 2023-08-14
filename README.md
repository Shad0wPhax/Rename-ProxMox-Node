# Rename ProxMox Node
Most of this script is sourced from https://i12bretro.github.io/tutorials/0633.html
This script will rename a ProxMox node and then move any existing VMs or LCXs to the new node. 

1. Login to ProxMox VE console, via SSH or Web UI.
2. run
   ```
   wget -O https://github.com/Shad0wPhax/Rename-ProxMox-Node/blob/main/renameNode.sh | bash

3. Wait for ProxMox to reboot, log back in and run
   ```
    wget -O https://github.com/Shad0wPhax/Rename-ProxMox-Node/blob/main/updateConfigs.sh | bash
4. Test ProxMox and confirm that everything is working as it should.
5. Confirm everything is working as it should.
     ## THE CLEANUP BELOW WILL DELETE CONFIG BACKUPS SO CONFIRM EVERYTHING IS WORKING BEFORE PROCEEDING
6. Run the cleanup script.
   ```
   wget -O https://github.com/Shad0wPhax/Rename-ProxMox-Node/blob/main/cleanup.sh | bash
