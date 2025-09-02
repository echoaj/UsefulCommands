# IT Topics

## Install ESXI Hypervisor/OS on computer
1. Create VMware account
2. Download ESXI ISO
3. Use Rufus to create a bootable USB with ESXI ISO on it
4. Connect USB to computer and boot from it
5. Plug in flash drive into computer/server.
6. Turn on computer, hit F12 as it boots to bring up boot menu
7. In boot menu select the flash drive containing ESXI ISO image
8. Select boot64.efi
9. Setup a static IP address for the ESXI host
10. Then you can connect to the ESXI host by typing the static IP address in a web browser

## How to extend ESXI free license
https://www.ituda.com/vmware-esxi-how-to-extend-the-license-expiration-period-of-an-esxi-server/#:~:text=The%20evaluation%20period%20is%2060,will%20disconnect%20from%20vCenter%20Server.

## Create a VM with Windows Server on it
1. Go to microsoft.com and download the Windows Server ISO
2. Connect to ESXI host and log in
3. Create a datastore and an ISO folder. Then upload the Windows Server ISO to the ISO folder.
4. Register a VM with the Windows Server ISO: 
   1. Guest OS Family: Windows
   2. Guest OS Version: Windows Server 2022
   3. Storage Hard Disk: 80GB
   4. Host Device: Select the ISO folder with the Windows Server ISO
5. Power on the VM.  If you get a VT-x error, then you need to enable `virtualization technology` in the BIOS of the ESXI host.

## Configure Active Directory Domain Controller
1. Log into the ESXI host
2. Power on the Windows Server VM
3. Within the Windows Server configure search for "advanced system settings" within the start menu
4. Give you computer a name.
5. Within the Windows Server configure a static IP address. Then restart the computer.
6. Go into server manager and go to "add roles and features" and add the role "Active Directory Domain Services" and "DNS Server"
7. Check on "restart the destination server automatically if required" then install
8. If no restart is required, then click on "Promote this server to a domain controller". You can also go to the search bar and type "dcpromo" to get to the same place.
9. Click on "add a new forest" and give it a name (eg: home.com). Then click next.
10. Create a password for the domain administrator. Then click next.
11. Everything will get installed and computer will restart
12. You can now log into the domain controller with the domain administrator account.
13. You now have active directory and can set up other computers to join the domain.

## Install WSUS server
1. Log into the ESXI host
2. Power on the Windows Server VM
3. Open up the server manager and go to "add roles and features"
4. Select "Windows Server Update Services" under server roles and click next
5. Check on "restart the destination server automatically if required" then install

## Configure WSUS server
1. Log into the ESXI host
2. Power on the Windows Server VM
3. Open WSUS
4. In Windows Server Update Services Configuration Wizard, click Synchronize from Microsoft Update.
5. Select English as the language.
6. Select the products you want to be downloading with the intention of patching and updating.
7. If you get End Snap-in error or a connection reset server node error, follow this guide to fix: https://bhanuwriter.com/wsus-connection-error-reset-server-node/
8. If all is well, you should see the number of updates waiting to be approved.

## Fix Error: Connection Error: Reset Server Node
https://bhanuwriter.com/wsus-connection-error-reset-server-node/

## Fix Error: When you run WSUS server for the first time and won't initiate
https://www.ajtek.ca/wsus/wsus-post-deployment-configuration-failed-windows-server-2022/

# Make it so VM can ping computers on the same network
1. Watch this video: https://www.youtube.com/watch?v=H9qLsHprzVQ

# Enable Local Group Policy Editor on Windows 10 Home
1. Open CMD As Administrator
2. Enter the following commands:
```
FOR %F IN ("%SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~*.mum") DO (DISM /Online /NoRestart /Add-Package:"%F")
FOR %F IN ("%SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~*.mum") DO (DISM /Online /NoRestart /Add-Package:"%F")
```
3. Run gpedit.msc to open Local Group Policy Editor

