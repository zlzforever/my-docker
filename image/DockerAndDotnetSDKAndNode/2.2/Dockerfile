FROM zlzforever/docker-and-dotnetsdk:18.09-2.2

RUN apk add nodejs nodejs-npm

RUN node --version
RUN npm config set unsafe-perm true
RUN npm cache clean --force
RUN npm i -g cnpm --registry=https://registry.npm.taobao.org

RUN cnpm --version