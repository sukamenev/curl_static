#!/bin/bash

apk add gcc make musl-dev openssl-dev openssl-libs-static file perl

VER="7.73.0"

wget https://curl.haxx.se/download/curl-$VER.tar.gz

tar xf $VER.tar.gz

cd $VER

./configure --disable-shared --with-ca-fallback
make curl_LDFLAGS=-all-static

