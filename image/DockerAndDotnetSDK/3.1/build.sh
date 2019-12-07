docker build -t zlzforever/docker-and-dotnetsdk:18.09-3.1 .
docker push zlzforever/docker-and-dotnetsdk:18.09-3.1
docker tag zlzforever/docker-and-dotnetsdk:18.09-3.1 zlzforever/docker-and-dotnetsdk:latest
docker push zlzforever/docker-and-dotnetsdk:latest