cat > /certbot/credentials.ini <<EOF
dns_aliyun_access_key = $access_key
dns_aliyun_access_key_secret = $access_key_secret
EOF
cat /certbot/credentials.ini
chmod 600 /certbot/credentials.ini
domains=${domains// / }
cmd="certbot certonly -n --agree-tos -m $email -a dns-aliyun --dns-aliyun-credentials /certbot/credentials.ini "
snis=""
for i in $domains; do
    cmd="$cmd -d $i"
    snis="$i,"
done
echo $cmd && ${cmd}
folders=$(ls /etc/letsencrypt/live)
for i in $folders; 
do
    if [ "README" != "$i" ];
        then
            openssl rsa -in /etc/letsencrypt/live/$i/privkey.pem -out /etc/letsencrypt/live/$i/cert.key
            curl -i -X POST $kong_admin_api/certificates  -F "cert=@/etc/letsencrypt/live/$i/fullchain.pem" -F "key=@/etc/letsencrypt/live/$i/cert.key" -F "snis=$snis"
            break
    fi
done