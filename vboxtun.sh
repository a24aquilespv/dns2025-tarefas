#!/bin/bash
if [ $# -eq 0 ]; then
    echo "sudo vboxtun.sh <redevbox-nova> <redelan-existente>"
    exit 1
fi
echo "Creando rede $1"
tunctl -t $1 -u root
ip link set $1 up
echo "engadindo rede $1 ao bridge $2"
/sbin/brctl addif $2 $1
