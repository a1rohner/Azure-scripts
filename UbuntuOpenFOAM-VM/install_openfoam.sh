#!/bin/bash

# install openFOAM
add-apt-repository http://dl.openfoam.org/ubuntu 
sh -c "wget -O - http://dl.openfoam.org/gpg.key | apt-key add -"
apt-get update
apt-get -y install openfoam5

# write some HTML

echo 'source /opt/openfoam5/etc/bashrc' >> ~/.bashrc

# restart Apache
apt-get -y install xrdp

# Step 2 – Install XFCE4 ( Unity doesn't seem to support xRDP in Ubuntu 14.04; although, in Ubuntu 12.04 it was supported ). 
# That's why we install Xfce4.

apt-get -y install xfce4

# Step 3 – Configure xRDP
# In this step, we modify two files to make sure xRDP uses Xfce4. 
# First we need to create, or edit, our .xsession file in our home directory. 
# We can either use nano or simply redirect an echo statement (easier):

echo 'xfce4-session' >> ~/.xsession

# The second file we need to edit is the startup file for xRDP, so it will start Xfce4.

echo 'startxfce4' >> /etc/xrdp/startwm.sh

# Step 4 – Restart xRDP
# To make all these changes effective, restart xRDP as such:

service xrdp restart
