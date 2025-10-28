FROM debian:13

RUN apt update  && apt install -y \
    procps \
    iproute2 \
    iputils-ping \
    bind9 \
    bind9utils \
    dnsutils \
    nano \
    vim \
    rsyslog \
    && rm -rf /var/lib/apt/lists/*

# COPY named.conf.options /etc/bind/named.conf.options
RUN mkdir -p /dns
COPY entrypoint.sh /dns
RUN chmod a+x /dns/entrypoint.sh

# Error:
# dnsserver-1  | rsyslogd: imklog: cannot open kernel log (/proc/kmsg): Permission denied.
# dnsserver-1  | rsyslogd: activation of module imklog failed [v8.2504.0 try https://www.rsyslog.com/e/2145 ]

# Solución:
RUN sed -i 's/^\s*module(load="imklog")/#module(load="imklog")/' /etc/rsyslog.conf

# Crear la carpeta de runtime para el usuario named, darle permisos
# y asignarle como grupo propietario al grupo bind
RUN mkdir -p /run/named && chmod 775 /run/named && chown root:bind /run/named

EXPOSE 53
# USER bind
WORKDIR /var/cache/bind

CMD ["-4"]

ENTRYPOINT ["/dns/entrypoint.sh"]

