#!/bin/bash

apt-get update
apt-get -y upgrade

# Utilities
apt-get -y install zip unzip emacs git

# R
# http://cran.r-project.org/bin/linux/ubuntu/
echo "deb http://cran.case.edu/bin/linux/ubuntu trusty/" >> /etc/apt/sources.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
apt-get update
apt-get -y install r-base r-base-dev

# Python
apt-get -y install python3 python3-pip
pip3 install -r requirements.txt
