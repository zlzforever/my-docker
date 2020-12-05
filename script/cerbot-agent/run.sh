docker run -it --rm -p 7999:80 \
    -e KONG_ENDPOINT=http://172.22.11.9:8001 \
    -e EMAIL=zlzforever@163.com \
    -e DOMAINS=javato.net \
 phpdockerio/kong-certbot-agent