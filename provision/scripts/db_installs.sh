#!/usr/bin/env bash

##########
#   Install mysql
#########
echo ">>> Install Mysql"
# Install MySQL without password prompt
# Set username and password to 'root'
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password password root"
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password_again password root"
sudo apt-get install -qq mysql-server

##########
#   Install MongoDB
#########
echo ">>> Installing MongoDB"
# Install MongoDB
# -qq implies -y --force-yes
sudo apt-get install -qq mongodb-org