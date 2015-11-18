#!/usr/bin/env bash
# -qq implies -y --force-yes

##########
#   INSTALL NGINX
#########
echo ">>> Installing Nginx"
# Install Nginx
sudo apt-get install -qq nginx
# Add vagrant user to www-data group
usermod -a -G www-data vagrant
# Nginx enabling and disabling virtual hosts
sudo cp -r /vagrant/provision/helpers/dnshost.sh dnshost;
sudo chmod guo+x dnshost;
sudo mv dnshost /usr/local/bin;

##########
#   Install Redis
#########
echo ">>> Installing Redis"
# Install Redis
# -qq implies -y --force-yes
sudo apt-get install -qq redis-server