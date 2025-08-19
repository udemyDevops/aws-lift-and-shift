#!/bin/bash

# for this use ubuntu 2024 AMI
sudo apt update
sudo apt upgrade -y
sudo apt install openjdk-17-jdk -y
sudo apt install tomcat10 tomcat10-admin tomcat10-docs tomcat10-common git -y   # for older version of ubuntu can use tomcat9 or tomcat8

# unlike in CentOS we don't need to download the binaries, extract, create user, create systemd file....