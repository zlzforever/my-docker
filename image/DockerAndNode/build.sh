docker build -t zlzforever/docker-and-node:18.09-10.16.3 .
docker push zlzforever/docker-and-node:18.09-10.16.3
docker tag zlzforever/docker-and-node:18.09-10.16.3 zlzforever/docker-and-node:latest
docker push zlzforever/docker-and-node:latest