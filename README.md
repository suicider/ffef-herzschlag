ffef-herzschlag
===============

OpenWRT bash script for Freifunk Erfurt node heartbeat

Usage:
* set up the heartbeat server with with a cgi script that evaluates the wget parameter
* create an entry in crontab, e.g.:
0 * * * *       /root/beat.sh
