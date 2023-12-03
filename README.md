# Nginx + Certbot

## Setup

### Get new certificate

```sh
./newcert.sh <domain name>
```

### Generate nginx config for the server

```sh
./newconf.sh <domain name> <container_host:port>
```

## Auto Renew

Execute `crontab.sh` to add auto renew task
