#!/bin/bash
# Writes certificates from environment variables so they survive Railway redeploys.
set -e
mkdir -p /var/lib/marzban-node
if [ -n "$SSL_CERT_PEM" ]; then printf '%s\n' "$SSL_CERT_PEM" > "${SSL_CERT_FILE:-/var/lib/marzban-node/ssl_cert.pem}"; fi
if [ -n "$SSL_KEY_PEM" ]; then printf '%s\n' "$SSL_KEY_PEM" > "${SSL_KEY_FILE:-/var/lib/marzban-node/ssl_key.pem}"; fi
if [ -n "$SSL_CLIENT_CERT_PEM" ]; then printf '%s\n' "$SSL_CLIENT_CERT_PEM" > "${SSL_CLIENT_CERT_FILE:-/var/lib/marzban-node/ssl_client_cert.pem}"; fi
exec python main.py
