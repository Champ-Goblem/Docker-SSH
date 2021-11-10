#!/bin/bash

/entry.sh

mkdir -p /root/.ssh

echo "Writing out AUTHORIZED_KEYS"
echo "${AUTHORIZED_KEYS}" | base64 -d > /root/.ssh/authorized_keys

echo ""
echo "Contents of /root/.ssh/authorized_keys:"
cat /root/.ssh/authorized_keys

echo ""
/usr/sbin/sshd -D -e -f /etc/ssh/sshd_config
