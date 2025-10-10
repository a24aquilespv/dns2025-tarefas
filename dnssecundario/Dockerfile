FROM debian:13
  
RUN apt update && apt install -y \
    procps \
    iproute2 \
    iputils-ping \
    bind9 \
    bind9utils \
    dnsutils \
    vim \
    nano \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /dns
COPY entrypoint.sh /dns
RUN chmod a+x entrypoint.sh
EXPOSE 53/tcp

WORKDIR /etc/bind


ENTRYPOINT [ "/dns/entrypoint.sh" ]