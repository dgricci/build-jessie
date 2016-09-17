## Dockerfile for compilation environment : C/C++ and make
FROM dgricci/jessie:0.0.2
MAINTAINER Didier Richard <didier.richard@ign.fr>

# g++, gcc and company !
RUN \
    apt-get -qy update && \
    apt-get install -qy --no-install-recommends \
        gcc \
        g++ \
        libc6-dev \
        autoconf \
        automake \
        bison \
        flex \
        libtool \
        gettext \
        make \
        cmake \
    && rm -rf /var/lib/apt/lists/*

