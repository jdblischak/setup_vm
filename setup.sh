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
# xml2-config needed to install XML, which is needed for many
# Bioconductor packages
apt-get -y install libxml2-dev
# CRAN
Rscript install_r_cran.R
# Bioconductor
Rscript install_r_bioconductor.R

# RStudio
# http://www.rstudio.com/products/rstudio/download-server/
# https://support.rstudio.com/hc/en-us/articles/200552306-Getting-Started
apt-get -y install gdebi-core libapparmor1
cd /tmp
wget http://download2.rstudio.org/rstudio-server-0.98.1062-amd64.deb
gdebi -n rstudio-server-0.98.1062-amd64.deb
cd -

# Python
apt-get -y install python3 python3-pip
pip3 install -r requirements.txt

# Subread
# http://bioinf.wehi.edu.au/subread-package/
cd /tmp
wget http://sourceforge.net/projects/subread/files/subread-1.4.5-p1/subread-1.4.5-p1-Linux-x86_64.tar.gz
tar -xzf subread-1.4.5-p1-Linux-x86_64.tar.gz
mv subread-1.4.5-p1-Linux-x86_64/bin/* /usr/local/bin/
cd -
