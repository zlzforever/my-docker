FROM gitlab/gitlab-runner:latest

RUN wget https://packages.microsoft.com/config/ubuntu/19.10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && dpkg -i packages-microsoft-prod.deb
RUN apt-get update && apt-get install apt-transport-https -y 
RUN apt-get update && apt-get install nodejs -y && apt-get install dotnet-sdk-3.1 -y
RUN npm config set unsafe-perm true
RUN npm cache clean --force
RUN npm i -g cnpm --registry=https://registry.npm.taobao.org
RUN cnpm --version