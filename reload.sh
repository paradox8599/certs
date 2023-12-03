#!/bin/sh
# docker compose exec nginx nginx -s reload
docker compose down
docker compose up -d
