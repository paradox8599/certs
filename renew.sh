#!/bin/sh
docker compose down
docker run --rm -it \
    -v ./docker-data/certbot/conf:/etc/letsencrypt \
    -v ./docker-data/certbot/lib:/var/lib/letsencrypt \
    -p "80:80" \
    certbot/certbot renew
docker compsoe up -d