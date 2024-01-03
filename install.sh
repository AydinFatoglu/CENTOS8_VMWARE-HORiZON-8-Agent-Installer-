#!/bin/bash

#Configuration
###############
xibouser=user
loginpass=1234.
domain=domain.local
systimezone=Europe/Istanbul 
# use cmd to get the list: timedatectl list-timezones
###############

clear
cat << "EOF"

 /$$    /$$ /$$      /$$                                                   /$$   /$$                     /$$                                      /$$$$$$                             
| $$   | $$| $$$    /$$$                                                  | $$  | $$                    |__/                                     /$$__  $$                            
| $$   | $$| $$$$  /$$$$ /$$  /$$  /$$  /$$$$$$   /$$$$$$   /$$$$$$       | $$  | $$  /$$$$$$   /$$$$$$  /$$ /$$$$$$$$  /$$$$$$  /$$$$$$$       | $$  \ $$                            
|  $$ / $$/| $$ $$/$$ $$| $$ | $$ | $$ |____  $$ /$$__  $$ /$$__  $$      | $$$$$$$$ /$$__  $$ /$$__  $$| $$|____ /$$/ /$$__  $$| $$__  $$      |  $$$$$$/                            
 \  $$ $$/ | $$  $$$| $$| $$ | $$ | $$  /$$$$$$$| $$  \__/| $$$$$$$$      | $$__  $$| $$  \ $$| $$  \__/| $$   /$$$$/ | $$  \ $$| $$  \ $$       >$$__  $$                            
  \  $$$/  | $$\  $ | $$| $$ | $$ | $$ /$$__  $$| $$      | $$_____/      | $$  | $$| $$  | $$| $$      | $$  /$$__/  | $$  | $$| $$  | $$      | $$  \ $$                            
   \  $/   | $$ \/  | $$|  $$$$$/$$$$/|  $$$$$$$| $$      |  $$$$$$$      | $$  | $$|  $$$$$$/| $$      | $$ /$$$$$$$$|  $$$$$$/| $$  | $$      |  $$$$$$/                            
    \_/    |__/     |__/ \_____/\___/  \_______/|__/       \_______/      |__/  |__/ \______/ |__/      |__/|________/ \______/ |__/  |__/       \______/                             
                                                                                                                                                                                      
                                                                                                                                                                                      
                                                                                                                                                                                      
 /$$       /$$                                      /$$$$$$                                  /$$           /$$$$$$                       /$$               /$$ /$$                    
| $$      |__/                                     /$$__  $$                                | $$          |_  $$_/                      | $$              | $$| $$                    
| $$       /$$ /$$$$$$$  /$$   /$$ /$$   /$$      | $$  \ $$  /$$$$$$   /$$$$$$  /$$$$$$$  /$$$$$$          | $$   /$$$$$$$   /$$$$$$$ /$$$$$$    /$$$$$$ | $$| $$  /$$$$$$   /$$$$$$ 
| $$      | $$| $$__  $$| $$  | $$|  $$ /$$/      | $$$$$$$$ /$$__  $$ /$$__  $$| $$__  $$|_  $$_/          | $$  | $$__  $$ /$$_____/|_  $$_/   |____  $$| $$| $$ /$$__  $$ /$$__  $$
| $$      | $$| $$  \ $$| $$  | $$ \  $$$$/       | $$__  $$| $$  \ $$| $$$$$$$$| $$  \ $$  | $$            | $$  | $$  \ $$|  $$$$$$   | $$      /$$$$$$$| $$| $$| $$$$$$$$| $$  \__/
| $$      | $$| $$  | $$| $$  | $$  >$$  $$       | $$  | $$| $$  | $$| $$_____/| $$  | $$  | $$ /$$        | $$  | $$  | $$ \____  $$  | $$ /$$ /$$__  $$| $$| $$| $$_____/| $$      
| $$$$$$$$| $$| $$  | $$|  $$$$$$/ /$$/\  $$      | $$  | $$|  $$$$$$$|  $$$$$$$| $$  | $$  |  $$$$/       /$$$$$$| $$  | $$ /$$$$$$$/  |  $$$$/|  $$$$$$$| $$| $$|  $$$$$$$| $$      
|________/|__/|__/  |__/ \______/ |__/  \__/      |__/  |__/ \____  $$ \_______/|__/  |__/   \___/        |______/|__/  |__/|_______/    \___/   \_______/|__/|__/ \_______/|__/      
                                                             /$$  \ $$                                                                                                                
                                                            |  $$$$$$/                                                                                                                
                                                             \______/                                                                                                                 
Fully automated installer for CentOS Stream release 8 x64 platform By AYDINFATOGLU
EOF
echo ""
echo ""



id -u $xibouser &>/dev/null || useradd $xibouser 
echo $loginpass | passwd $xibouser --stdin





host="USER INPUT"
read -p "YOU MUST ENTER A NEW HOSTNAME: " host
hostnamectl set-hostname $host.$domain

echo "Setting Hostname as : [$host.$domain]"

echo "STARTING NOW!!!"
sleep 2
clear

cat << "EOF"

 /$$    /$$ /$$      /$$                                                   /$$   /$$                     /$$                                      /$$$$$$                             
| $$   | $$| $$$    /$$$                                                  | $$  | $$                    |__/                                     /$$__  $$                            
| $$   | $$| $$$$  /$$$$ /$$  /$$  /$$  /$$$$$$   /$$$$$$   /$$$$$$       | $$  | $$  /$$$$$$   /$$$$$$  /$$ /$$$$$$$$  /$$$$$$  /$$$$$$$       | $$  \ $$                            
|  $$ / $$/| $$ $$/$$ $$| $$ | $$ | $$ |____  $$ /$$__  $$ /$$__  $$      | $$$$$$$$ /$$__  $$ /$$__  $$| $$|____ /$$/ /$$__  $$| $$__  $$      |  $$$$$$/                            
 \  $$ $$/ | $$  $$$| $$| $$ | $$ | $$  /$$$$$$$| $$  \__/| $$$$$$$$      | $$__  $$| $$  \ $$| $$  \__/| $$   /$$$$/ | $$  \ $$| $$  \ $$       >$$__  $$                            
  \  $$$/  | $$\  $ | $$| $$ | $$ | $$ /$$__  $$| $$      | $$_____/      | $$  | $$| $$  | $$| $$      | $$  /$$__/  | $$  | $$| $$  | $$      | $$  \ $$                            
   \  $/   | $$ \/  | $$|  $$$$$/$$$$/|  $$$$$$$| $$      |  $$$$$$$      | $$  | $$|  $$$$$$/| $$      | $$ /$$$$$$$$|  $$$$$$/| $$  | $$      |  $$$$$$/                            
    \_/    |__/     |__/ \_____/\___/  \_______/|__/       \_______/      |__/  |__/ \______/ |__/      |__/|________/ \______/ |__/  |__/       \______/                             
                                                                                                                                                                                      
                                                                                                                                                                                      
                                                                                                                                                                                      
 /$$       /$$                                      /$$$$$$                                  /$$           /$$$$$$                       /$$               /$$ /$$                    
| $$      |__/                                     /$$__  $$                                | $$          |_  $$_/                      | $$              | $$| $$                    
| $$       /$$ /$$$$$$$  /$$   /$$ /$$   /$$      | $$  \ $$  /$$$$$$   /$$$$$$  /$$$$$$$  /$$$$$$          | $$   /$$$$$$$   /$$$$$$$ /$$$$$$    /$$$$$$ | $$| $$  /$$$$$$   /$$$$$$ 
| $$      | $$| $$__  $$| $$  | $$|  $$ /$$/      | $$$$$$$$ /$$__  $$ /$$__  $$| $$__  $$|_  $$_/          | $$  | $$__  $$ /$$_____/|_  $$_/   |____  $$| $$| $$ /$$__  $$ /$$__  $$
| $$      | $$| $$  \ $$| $$  | $$ \  $$$$/       | $$__  $$| $$  \ $$| $$$$$$$$| $$  \ $$  | $$            | $$  | $$  \ $$|  $$$$$$   | $$      /$$$$$$$| $$| $$| $$$$$$$$| $$  \__/
| $$      | $$| $$  | $$| $$  | $$  >$$  $$       | $$  | $$| $$  | $$| $$_____/| $$  | $$  | $$ /$$        | $$  | $$  | $$ \____  $$  | $$ /$$ /$$__  $$| $$| $$| $$_____/| $$      
| $$$$$$$$| $$| $$  | $$|  $$$$$$/ /$$/\  $$      | $$  | $$|  $$$$$$$|  $$$$$$$| $$  | $$  |  $$$$/       /$$$$$$| $$  | $$ /$$$$$$$/  |  $$$$/|  $$$$$$$| $$| $$|  $$$$$$$| $$      
|________/|__/|__/  |__/ \______/ |__/  \__/      |__/  |__/ \____  $$ \_______/|__/  |__/   \___/        |______/|__/  |__/|_______/    \___/   \_______/|__/|__/ \_______/|__/      
                                                             /$$  \ $$                                                                                                                
                                                            |  $$$$$$/                                                                                                                
                                                             \______/                                                                                                                 
Fully automated installer for CentOS Stream release 8 x64 platform By AYDINFATOGLU
EOF


echo ""
echo ""
echo "Downloading and Installing GUI [GNOME Clasic Session / GDM]"
yum install gnome-classic-session -y 

cat <<EOT >> /var/lib/AccountsService/users/$xibouser
# This file contains defaults for new users. To edit, first
# copy it to /etc/accountsservice/user-templates and make changes
# there

[com.redhat.AccountsServiceUser.System]
id='almalinux'
version-id='8.5'

[User]
Session=gnome-classic-wayland
Icon=/home/test/.face
SystemAccount=false
EOT




echo "Downloading and Installing Prerequsits"
yum install git -y
yum install nano -y
yum install wget -y


echo "Installing VMware Horizon Agent Linux x86_64 2306-8.10.0-21968037 with Dependencies for CentOS 8 (Tarball)."


# Define the filename
filename="VMware-horizonagent-linux-x86_64-2306-8.10.0-21968037.tar.gz"

# Loop until the file is found
while true; do
    # Prompt the user
    read -p "Please place $filename in the $(dirname "$0") directory and press Enter to continue..."

    # Check if the file exists in the same directory as the script
    if [ -f "$(dirname "$0")/$filename" ]; then
        echo "File $filename found. Continuing..."
        
        
        
        break
    else
        echo "File $filename not found. Please try again."
    fi
done

sudo dnf install epel-release -y -y
sudo dnf install pulseaudio-utils -y
sudo dnf install bc -y
sudo dnf install xorg-x11-drv-vmware -y


tar -xzvf VMware-horizonagent-linux-x86_64-2306-8.10.0-21968037.tar.gz
cd VMware-horizonagent-linux-x86_64-2306-8.10.0-21968037
sh ./install_viewagent.sh -A yes

echo "Configureing - SELINUX"

setenforce 0
sed -i --follow-symlinks 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/sysconfig/selinux
sed '7s/^#//' -i /etc/gdm/custom.conf

echo "Configureing Firewall"

systemctl stop firewalld
systemctl disable firewalld
systemctl daemon-reload

echo "GUI enabled"
systemctl set-default graphical.target
echo "Setting Time Zone"
sudo timedatectl set-timezone $systimezone


echo "Auto Login is configured for user: $xibouser"

cd /etc/gdm/
sed -i "4i AutomaticLogin=$xibouser" custom.conf
sed -i "5i AutomaticLoginEnable=True" custom.conf

echo "Never Sleep configured"
systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target



echo "ALL DONE!!!! - REBOOTING NOW..."
sleep 5
sudo reboot
