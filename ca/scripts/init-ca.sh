#!/bin/bash
set -e
if [ ! -f /pki/ca.crt ]; then
    make-cadir /tmp/easyrsa
    cd /tmp/easyrsa
    ./easyrsa init-pki
    echo | ./easyrsa build-ca nopass
    cp -r pki/* /pki/
    echo "CA CREATED"
fi
sleep infinity
