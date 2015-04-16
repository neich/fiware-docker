FROM gliderlabs/alpine:3.1

RUN apk --update add supervisor bzip2 tar wget make cmake g++ scons git boost-dev curl-dev libmicrohttpd-dev curl libxml2 netcat-openbsd libxslt file bash coreutils

COPY install-extra.sh /usr/local/bin/install-extra.sh
COPY mongodb.conf /etc/mongodb.conf

RUN /bin/sh /usr/local/bin/install-extra.sh
