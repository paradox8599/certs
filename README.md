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

> Note: Docker container should also connect to the `nginx-proxy` network

## Auto Renew

Execute `./crontab.sh` to add auto renew task

Execute `./crontab.sh rm` to remove auto renew task
