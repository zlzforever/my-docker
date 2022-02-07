docker run -it --platform linux/amd64 \
    -v credentials.ini:/certbot/credentials.ini \
    zlzforever/kong-certbot

docker run --rm -it \
    -e email=lewis@linhecao.com \
    -e access_key= \
    -e access_key_secret= \
    -e kong_admin_api='http://192.168.1.17:8001' \
    -e domains='zlzforever.com' zlzforever/kong-certbot:aliyun