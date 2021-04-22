#!/bin/sh

set -e

opkg install docker dockerd

PKG_NAME="${1}"
PKG_VERSION="${2%-[0-9]*}"
#PKG_RELEASE="${2#${PKG_VERSION}-}"

case "${PKG_NAME}" in
    "libnetwork")
        docker-proxy
        ;;
    *)
        "${PKG_NAME}" --version | grep "${PKG_VERSION}"
        ;;
esac

docker run --name docker-test --init --publish 80:80 --rm --detach nginx
wget http://localhost -O - | grep "<title>Welcome to nginx!</title>"
docker stop docker-test

opkg remove docker dockerd --force-removal-of-dependent-packages --force-remove
