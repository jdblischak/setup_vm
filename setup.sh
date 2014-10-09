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
# curl-config needed for installing RCurl, a dependency of devtools
# http://www.omegahat.org/RCurl/FAQ.html
apt-get -y install libcurl4-openssl-dev
Rscript install_r_cran.R

# RStudio
# http://www.rstudio.com/products/rstudio/download-server/
# https://support.rstudio.com/hc/en-us/articles/200552306-Getting-Started
apt-get -y install gdebi-core libapparmor1
cd /tmp
wget http://download2.rstudio.org/rstudio-server-0.98.1062-amd64.deb
gdebi -n rstudio-server-0.98.1062-amd64.deb

# Python
apt-get -y install python3 python3-pip
pip3 install -r requirements.txt
