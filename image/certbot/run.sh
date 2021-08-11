docker run -it zlzforever/aliyuncertbot \
 -v /Users/lewis/github/my-docker/image/certbot/credentials.ini:/aliyuncertbot/credentials.ini \
 -e KONG_ENDPOINT=http://kong-admin:8001 \
 -e EMAIL=foo@bar.com \
 -e DOMAINS= *.zlzforever.com