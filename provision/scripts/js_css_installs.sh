#!/usr/bin/env bash

##########
#   INSTALL NVM (Install and managing different versions of nodejs)
#########
NVM_DIR="/home/vagrant/.nvm"
git clone https://github.com/creationix/nvm.git $NVM_DIR
PROFILE="/home/vagrant/.profile"
SOURCE_STR="\n# This loads NVM\n[[ -s /home/vagrant/.nvm/nvm.sh ]] && . /home/vagrant/.nvm/nvm.sh"
printf "$SOURCE_STR" >> "$PROFILE"
. /home/vagrant/.profile

##########
#   INSTALL Nodejs
#########
echo ">>> Install nodejs"
nvm install stable
# Set a default node version and start using it
nvm alias default stable
# Use stable version as default
nvm use default

##########
#   INSTALL NPM ( Package manager for Node.js)
#########
echo ">>> Install npm"
sudo apt-get install -qq npm

##########
#   INSTALL BOWER ( A package manager for the web)
#########
echo ">>> Install bower"
npm install -g bower

##########
#   INSTALL Coffeescript ( Little language that compiles into JavaScript)
#########
echo ">>> Install coffeescript"
npm install -g coffee-script

##########
#   INSTALL GRUNT ( Javascript Task Runner)
#########
echo ">>> Install grunt"
npm install -g grunt-cli

##########
#   INSTALL LESS ( Less is a CSS pre-processor, meaning that it extends the CSS language)
#########
echo ">>> Install less"
npm install -g less
