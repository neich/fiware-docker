#!/bin/bash

#cd
#git clone https://github.com/mongodb/mongo-cxx-driver.git
#cd mongo-cxx-driver
#git checkout legacy
#
#chmod a+r -R /usr/local/include/mongo

wget http://downloads.mongodb.org/cxx-driver/mongodb-linux-x86_64-2.2.3.tgz
# Don't pay attention to the '-linux-x86_64' in the name: it is actually source code for any platform
tar xfvz mongodb-linux-x86_64-2.2.3.tgz
cd mongo-cxx-driver-v2.2
scons --prefix=/usr/local install
sudo chmod a+r -R /usr/local/include/mongo

cd
wget http://googlemock.googlecode.com/files/gmock-1.5.0.tar.bz2
tar xfvj gmock-1.5.0.tar.bz2
cd gmock-1.5.0
./configure
make
make install  # installation puts .h files in /usr/local/include and library in /usr/local/lib