FROM ubuntu:latest

RUN apt-get update && apt-get install -y bind9

COPY named.conf /etc/bind/
COPY zones/vsfi.local.zone /var/bind/

EXPOSE 53/udp

CMD ["/usr/sbin/named", "-g"]