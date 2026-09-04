#!/bin/bash
configured=false
if ! $configured; then
	echo "Modify the script with proper credentials, and set configured to true"
	exit 1
fi

docker compose run --rm certbot certonly \
  --dns-cloudflare \
  --dns-cloudflare-credentials /etc/cloudflare.ini \
  -d "*.example.com" \
  --email example@email.com \
  --agree-tos \
  --non-interactive \
  --dry-run
