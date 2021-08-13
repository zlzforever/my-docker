FROM centos:7
RUN yum update
RUN yum install -y python36
RUN mkdir -p /mnt/certbot && cd /mnt/certbot && python3 -m venv venv && source venv/bin/activate
RUN pip install certbot certbot-dns-aliyun
ENTRYPOINT [ "~/.acme.sh/acme.sh",   "--issue --dns dns_dp -d $domain"]