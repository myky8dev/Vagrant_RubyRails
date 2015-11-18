# Pre_install configs

##### NGINX
# Add repo for latest stable nginx
sudo add-apt-repository -y ppa:nginx/stable

##### MongoDB
# Get key and add to sources
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list

##### Redis
# Add repository
sudo apt-add-repository ppa:rwky/redis -y
