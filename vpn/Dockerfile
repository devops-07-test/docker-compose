FROM ubuntu:24.04
RUN apt update && apt install -y openvpn easy-rsa iproute2
COPY scripts/init-vpn.sh /init-vpn.sh
RUN chmod +x /init-vpn.sh
CMD ["/init-vpn.sh"]
