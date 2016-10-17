#!/bin/sh
set -e

# get the gateway address to the host table
echo `netstat -nr | grep '^0\.0\.0\.0' | awk '{print $2}'` local >> /etc/hosts

exec "$@"
