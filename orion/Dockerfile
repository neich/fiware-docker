FROM ubikwa:base_centos63

COPY bin/install-extra.sh /usr/local/bin/install-extra.sh
COPY bin/install-orion.sh /usr/local/bin/install-orion.sh
COPY supervisord.conf /etc/supervisord.conf

RUN /bin/bash /usr/local/bin/install-extra.sh
RUN /bin/bash /usr/local/bin/install-orion.sh

EXPOSE 1026
CMD ["/usr/bin/supervisord"]