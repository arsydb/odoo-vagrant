echo "Welcome to Odoo 10 Community installer for ubuntu 16.04"

echo "Configure locale"
sudo locale-gen > /dev/null
sudo sh -c "echo 'LANG=en_US.UTF-8\nLC_ALL=en_US.UTF-8' > /etc/default/locale"
sudo sh -c 'echo "LC_ALL=en_US.UTF-8" > /etc/environment'

echo "Update apt source list and install updates"
sudo apt-get update -y > /dev/null
sudo apt-get dist-upgrade -y > /dev/null

echo "Install git and vim"
sudo apt-get install git vim -y > /dev/null

echo "Download and prepare Odoo install script created by @Yenthe666 from github"
cd /tmp > /dev/null
sudo wget https://raw.githubusercontent.com/Yenthe666/InstallScript/10.0/odoo_install.sh
sudo chmod +x odoo_install.sh > /dev/null

echo "Install Odoo"
./odoo_install.sh