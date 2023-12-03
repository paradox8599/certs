#!/bin/sh
echo "0 6 * * 1 cd \"$(pwd)\" && ./renew.sh" >> crontab.tmp
crontab -l | grep -v "renew.sh" > crontab.tmp
crontabs -r
crontab crontab.tmp
