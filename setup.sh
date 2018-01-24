#!/bin/bash

jversion=1.8.0

#Installing java
yum install java-${jversion}-openjdk-devel

#Installing docker
yum install -y yum-utils device-mapper-persistent-data lvm2

yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

yum install docker-ce
