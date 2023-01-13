#!/bin/bash

#This script checks versions of python, git, aws cli, and azure-cli assuming they are already installed.  

mkdir $HOME/acmconfig/
sudo mkdir /usr/acm
sudo mkdir /usr/acm/keys
sudo mkdir /usr/acm/keys/adminAccounts
sudo mkdir /usr/acm/keys/starter
sudo chown -R $USER:$USER /usr/acm
sudo chown -R $USER:$USER $HOME/acmconfig/
echo 'new------------------'
az extension add --name resource-graph
echo "Current working directory is: "
pwd
mkdir $HOME/keys
mkdir $HOME/keys/starter
sudo mkdir /var/log/acm
sudo chown -R $USER:$USER /var/log/acm
sudo mkdir /opt/acm
sudo chown -R $USER:$USER /opt/acm
git --version
echo 'and---------------------------------'
cd $HOME
aws --version
pip3 install requests
pip3 install pyyaml
pip3 install IPy
pip3 install charset-normalizer

python3 --version
python --version

echo 'then--------------------------------'
sudo apt-get install -y dos2unix
