#!/bin/sh

crontab -l | grep -v "renew.sh" >crontab.tmp
if [ "$1" != "rm" ]; then
    echo "0 6 * * 1 cd \"$(pwd)\" && ./renew.sh" >>crontab.tmp
    echo "Cron job added"
else
    echo "Cron job removed"
fi
crontab -r
crontab crontab.tmp
rm -rf crontab.tmp
