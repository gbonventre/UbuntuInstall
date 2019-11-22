# For Ubuntu



#!/usr/bin/env bash

echo "installing pip..."
sudo apt install python-pip

echo "installing virtualenv..."
sudo apt install virtualenv

echo "creating virtual environment -> venv..."

virtualenv --python=python2.7 venv

echo "adding environmental variables to venv activate script..."
BASEDIR=$(pwd)
echo "export PYTHONPATH=\"$BASEDIR/:\$PYTHONPATH\"" >> venv/bin/activate

export

echo "activating venv..."
source venv/bin/activate

echo "installing dependencies..."
sudo venv/bin/pip install -r requirements.txt

echo "process complete"



# Updates
sudo apt update
# Needed for Microsoft VS Code
sudo apt install software-properties-common apt-transport-https wget

# Get the Microsoft GPG key
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
# enable the VS Code repositories
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
# Install Microsoft VS Code
sudo apt update
sudo apt install code


# Get the Google Chrome Key
# https://linuxhint.com/install_google_chrome_ubuntu_ppa/
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt update
sudo apt install google-chrome-stable


# Install Google Chrome
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#sudo dpkg -i google-chrome-stable_current_amd64.deb


#Install Postgress 11
# https://tecadmin.net/install-postgresql-server-on-ubuntu/
# Also see this to set the password http://www.indjango.com/ubuntu-install-postgresql-and-pgadmin/
sudo apt-get install wget ca-certificates
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
sudo apt-get update
sudo apt-get install postgresql postgresql-contrib


# https://www.journaldev.com/26285/install-postgresql-pgadmin4-ubuntu
sudo apt install wget ca-certificates
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
sudo apt-get update
sudo apt-get install pgadmin4 pgadmin4-apache2



# Install Firefox
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A6DCF7707EBC211F



# Install Azure Data Studio Dependencies
sudo apt-get install libxss1
sudo apt-get install libgconf-2-4
sudo apt-get install libunwind8

# Install Azure Data Studio
cd ~ 
cp ~/Downloads/azuredatastudio-linux-<version string>.tar.gz ~ 
tar -xvf ~/azuredatastudio-linux-<version string>.tar.gz 
echo 'export PATH="$PATH:~/azuredatastudio-linux-x64"' >> ~/.bashrc
source ~/.bashrc 
azuredatastudio
