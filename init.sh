#!/bin/sh
docker run --rm -it \
    -v ./docker-data/certbot/conf:/etc/letsencrypt \
    -v ./docker-data/certbot/lib:/var/lib/letsencrypt \
    -p "80:80" \
    certbot/certbot certonly \
    --no-eff-email \
    --register-unsafely-without-email \
    --agree-tos \
    --standalone \
    -d $1