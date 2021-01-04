FROM registry.cn-shanghai.aliyuncs.com/zlzforever/dotnet/sdk:5.0
RUN apt-get update
RUN apt-get install -y gnupg2 curl
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y yarn