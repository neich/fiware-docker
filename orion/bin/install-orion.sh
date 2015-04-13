#!/bin/bash

cd

# Cors version
# git clone git@github.com:jmcanterafonseca/fiware-orion.git
# cd fiware-orion
# git checkout cors3

# git clone https://github.com/telefonicaid/fiware-orion
# git checkout master
git clone https://github.com/jmcanterafonseca/fiware-orion.git
git checkout cors3
cd fiware-orion
make
make install INSTALL_DIR=/usr

useradd orion
mkdir /var/log/contextBroker
chown orion.orion /var/log/contextBroker
mkdir /var/run/contextBroker
chown orion.orion /var/run/contextBroker
cp ./etc/config/contextBroker /etc/sysconfig/
cp ./etc/init.d/contextBroker.centos /etc/init.d/contextBroker
chmod u+x /etc/init.d/contextBroker