#!/bin/bash


#chmod a+x safsdadfs

# bind tiene que trabajar sobre la carpeta logs dentro
# del contenedor
chmod 770 /logs
chmod 660 /logs/*
chown root:bind -R /logs

# Asignarle el grupo propietario "bind" a /logs
rsyslogd
named -u bind "$@"