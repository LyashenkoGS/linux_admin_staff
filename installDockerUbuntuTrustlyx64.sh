#!/bin/bash
#should be run with root priviledges
#update repositories, add key, install docker
apt-get update -y
apt-get install -y apt-transport-https ca-certificates
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" | sudo tee /etc/apt/sources.list.d/docker.list
apt-get update -y
apt-get install -y docker-engine
#run hello-horld
service docker start
docker run hello-world
# add usergroup docker and give to it root priviledges to run docker without sudo
usermod -aG docker my



