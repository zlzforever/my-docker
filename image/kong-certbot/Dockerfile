FROM centos:7

RUN yum -y install epel-release
RUN yum -y install python36
RUN curl -O https://bootstrap.pypa.io/pip/3.6/get-pip.py
RUN /usr/bin/python3.6 get-pip.py
WORKDIR /certbot
RUN pip install certbot certbot-dns-aliyun
RUN yum -y install openssl

COPY docker-entrypoint.sh ./docker-entrypoint.sh 

ENTRYPOINT ["sh", "docker-entrypoint.sh" ]

