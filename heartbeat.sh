#!/bin/ash
# Sends a heartbeat with node IP and counts the OLSR neighbors
IP=$(uci get network.wireless0.ipaddr)
NET=$(uci get profile_erfurt.profile.mesh_network)
OLSR=/var/etc/hosts.olsr
SERVER=''
#
SUBNET=`echo $NET | cut -d/ -f1 | cut -d. -f1,2`
HOSTS=`grep $SUBNET $OLSR | wc -l`

/usr/bin/wget -O - $SERVER?$IP+$HOSTS &2>/dev/null
