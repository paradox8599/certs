# Nginx + Certbot

## Auto Renew

Add the following to cron jobs using `crontab -e`

`0 6 * * * cd <workspace path> && ./renew.sh`
