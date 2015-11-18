#!/usr/bin/env sh

##########
#   Install Ruby
#########
echo ">>> Install Ruby"
curl -sSL https://rvm.io/mpapis.asc | gpg --import -
sudo \curl -sSL https://get.rvm.io | bash -s stable --ruby;

##########
#   Ruby on Rails
#########
echo ">>> Install Ruby on Rails"
sudo \curl -sSL https://get.rvm.io | bash -s stable --rails
