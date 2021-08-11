#!/usr/bin/env bash

# chmod 600 /aliyuncertbot/credentials.ini

echo $DOMAINS
e="certbot certonly -a certbot-dns-aliyun:dns-aliyun --certbot-dns-aliyun:dns-aliyun-credentials /credentials/credentials.ini -d example.com -d \"$DOMAINS\""
echo $e
exec $e