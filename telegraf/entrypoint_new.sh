#!/bin/bash
#set -e

if [ $EUID -ne 0 ]; then
    echo "exec $@"
    exec "$@"
else
    # Allow telegraf to send ICMP packets and bind to privliged ports
    setcap cap_net_raw,cap_net_bind_service+ep /usr/bin/telegraf || echo "Failed to set additional capabilities on /usr/bin/telegraf"
    exec setpriv --reuid telegraf --init-groups "$@" 
fi