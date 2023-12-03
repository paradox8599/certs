#!/bin/sh
mkdir -p logs
docker compose down
date >> logs/certbot.log
docker run --rm -it \
    -v ./docker-data/certbot/conf:/etc/letsencrypt \
    -v ./docker-data/certbot/lib:/var/lib/letsencrypt \
    -p "80:80" \
    certbot/certbot renew >> logs/certbot.log
docker compose up -d