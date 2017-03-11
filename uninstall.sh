#!/bin/bash
## Dockerfile for compilation environment : C/C++ and make

# Exit on any non-zero status.
trap 'exit' ERR
set -E

clean=${1:-n}
clean=${clean:0:1}
clean=${clean,,[N]}

echo "Uninstalling g++, gcc and co ..."
apt-get -qy update
apt-get purge -y \
    gcc \
    g++ \
    libc6-dev \
    autoconf \
    automake \
    pkg-config \
    bison \
    flex \
    libtool \
    gettext \
    make \
    cmake
[ "${clean}" != "n" ] && {
    apt-get clean -y
    rm -rf /var/lib/apt/lists/*
}

exit 0

