#!/bin/bash

# Install docker
sudo apt update
sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
      stable"
sudo apt update
sudo apt-get -y install docker-ce
sudo docker version
docker images
sudo groupadd docker
sudo usermod -aG docker $USER
# actually you need to logout here
sudo apt -y install docker-compose

# Install golang
sudo add-apt-repository -y ppa:longsleep/golang-backports
sudo apt-get update
sudo apt-get -y install golang-go

# Install nodejs
sudo apt-get -y install nodejs
sudo apt-get -y install npm
sudo npm install n -g
sudo apt purge -y nodejs npm
sudo npm update -g npm

# Install dependent packages
sudo apt install -y make gcc g++ libtool

# Install Hyper ledger fabric
curl -sSL http://bit.ly/2ysbOFE | bash -s 1.3.0 1.3.0 0.4.13
