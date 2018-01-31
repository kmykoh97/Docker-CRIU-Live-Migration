#!/bin/sh
sudo su
apt-get update && \
apt-get install -y protobuf-c-compiler libprotobuf-c0-dev \
protobuf-compiler libprotobuf-dev:amd64 gcc build-essential \
bsdmainutils python git-core asciidoc make htop git curl supervisor \
cgroup-lite libapparmor-dev libseccomp-dev libprotobuf-dev \
libprotobuf-c0-dev protobuf-c-compiler protobuf-compiler \
python-protobuf libnl-3-dev libcap-dev libaio-dev apparmor \
libnet-dev asciidoc xmlto
cd /home/ubuntu/
git clone https://github.com/xemul/criu criu
cd criu
make clean
make
make install
criu check
criu check --all
