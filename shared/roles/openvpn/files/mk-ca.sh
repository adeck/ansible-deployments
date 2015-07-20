#!/usr/bin/env bash

cd /etc/easy-rsa-openvpn
. vars
./clean-all && ( yes '' | ./build-ca )

