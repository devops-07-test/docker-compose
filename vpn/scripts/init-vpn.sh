#!/bin/bash
set -e
mkdir -p /vpn-pki
if [ ! -f /vpn-pki/server.crt ]; then
    make-cadir /tmp/easyrsa
    cd /tmp/easyrsa
    ./easyrsa init-pki
    cp /ca-pki/ca.crt pki/
    cp /ca-pki/private/ca.key pki/private/
    echo | ./easyrsa gen-req server nopass
    ./easyrsa sign-req server server
    cp pki/issued/server.crt /vpn-pki/
    cp pki/private/server.key /vpn-pki/
    cp pki/ca.crt /vpn-pki/
fi
openvpn --dev tun --proto udp --port 1194 --ca /vpn-pki/ca.crt --cert /vpn-pki/server.crt --key /vpn-pki/server.key --ifconfig 10.8.0.1 10.8.0.2
