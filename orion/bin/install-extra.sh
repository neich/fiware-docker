#!/bin/bash

wget http://downloads.mongodb.org/cxx-driver/mongodb-linux-x86_64-2.2.3.tgz
# Don't pay attention to the '-linux-x86_64' in the name: it is actually source code for any platform
tar xfvz mongodb-linux-x86_64-2.2.3.tgz
cd mongo-cxx-driver-v2.2
scons                                         # The build/libmongoclient.a library is generated as outcome
scons install                            # This puts .h files in /usr/local/include and libmongoclient.a in /usr/local/lib
chmod a+r -R /usr/local/include/mongo    # It seems that scons install breaks permissions

wget http://googlemock.googlecode.com/files/gmock-1.5.0.tar.bz2
tar xfvj gmock-1.5.0.tar.bz2
cd gmock-1.5.0
./configure
make
make install  # installation puts .h files in /usr/local/include and library in /usr/local/lib
ldconfig      # just in case... it doesn't hurt :)

# Install proxyCoap
git clone https://github.com/staropram/cantcoap
cd cantcoap
git checkout 749e22376664dd3adae17492090e58882d3b28a7
make
cp cantcoap.h /usr/local/include
cp dbg.h /usr/local/include
cp nethelper.h /usr/local/include
cp libcantcoap.a /usr/local/lib