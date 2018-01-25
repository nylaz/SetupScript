#!/bin/bash

jversion=1.8.0

#install wget
echo Starting wget installation..
yum install wget
echo Wget installation complete!

#installing java
echo Starting java installation..
yum install java-${jversion}-openjdk-devel
echo Java installation complete!

#installing docker
echo Starting docker installation..
yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install docker-ce
echo Docker installation complete!

#installing jenkins
echo Starting jenkins installation..
wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo
rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
yum install jenkins
echo Jenkins installation complete!

#start docker and init swarm
echo Starting docker and initializing swarm..
systemctl start docker
docker swarm init
echo Docker installation and swarm init complete!
