#!/bin/bash

apt-get update
apt-get -y upgrade

# Utilities
apt-get -y install zip unzip emacs git

# R
# http://cran.r-project.org/bin/linux/ubuntu/
echo "deb http://cran.case.edu/bin/linux/ubuntu precise/" >> /etc/apt/sources.list
apt-get update
apt-get -y install r-base r-base-dev

