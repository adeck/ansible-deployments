#!/usr/bin/env bash

cd /etc/easy-rsa-openvpn
. vars
export EASY_RSA=.
./pkitool --server server


