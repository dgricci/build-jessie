## Dockerfile for compilation environment : C/C++ and make
FROM dgricci/jessie:0.0.4
MAINTAINER Didier Richard <didier.richard@ign.fr>

COPY install.sh /usr/local/bin/01-install.sh
COPY uninstall.sh /usr/local/bin/01-uninstall.sh

CMD ["/usr/local/bin/01-install.sh"]

