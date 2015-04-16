FROM gpmidi/centos-6.3

RUN yum -y install epel-release
RUN yum --disablerepo=epel -y update  ca-certificates
RUN yum -y update
RUN yum -y install supervisor bzip2 tar wget make cmake gcc-c++ scons git
RUN yum -y install libmicrohttpd-devel boost-devel libcurl-devel
RUN yum -y install mongodb-server
RUN yum -y update pcre            # otherwise, mongod crashes in CentOS 6.3
RUN yum -y install python python-flask python-jinja2 curl libxml2 nc mongodb libxslt 
