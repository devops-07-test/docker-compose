FROM ubuntu:24.04
RUN apt update && apt install -y easy-rsa openssl
COPY scripts/init-ca.sh /init-ca.sh
RUN chmod +x /init-ca.sh
CMD ["/init-ca.sh"]
