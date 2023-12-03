#!/bin/sh
echo "0 6 * * 1 cd \"$(pwd)\" && ./renew.sh" >> crontab.tmp
crontab -l | grep -v "renew.sh" > crontab.tmp
crontab -r
crontab crontab.tmp
rm -rf crontab.tmp