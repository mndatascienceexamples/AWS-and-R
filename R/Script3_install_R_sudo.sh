#!/bin/bash

# NOTE:  These scripts need to be run with root access
#  >  sudo ./Script3_install_R_sudo.sh

cd /home/ec2-user/lib/R-3.5.1

#install takes about 
make install


ln -s /opt/R/3.5.1/bin/R/bin/R /usr/bin/R
ln -s /opt/R/3.5.1/bin/R/bin/R /usr/local/bin/R 

export PATH=$PATH:/opt/R/3.5.1/bin/R/bin
export RSTUDIO_WHICH_R=/opt/R/3.5.1/bin/R/bin/R

#install RStudio
cd /home/ec2-user/lib

yum -y install --nogpgcheck rstudio-server-rhel-1.1.456-x86_64.rpm

rstudio-server verify-installation

# Command to check which directory rstudio is installed
# > which rstudio-server
#   /usr/sbin/rstudio-server

#### Create EC2 user (as a root/sudo user)
# > adduser rstudio
# > sh -c "echo rstudio | passwd rstudio --stdin"
