FROM python
WORKDIR /aliyuncertbot
RUN pip install certbot-dns-aliyun
COPY docker-entrypoint.sh ./docker-entrypoint.sh 

ENTRYPOINT ["sh", "/aliyuncertbot/docker-entrypoint.sh" ]