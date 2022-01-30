## ClickHouse

chown -R 101 ./data/clickhouse

docker run --platform linux/amd64 --ulimit nofile=262144:262144 yandex/clickhouse-server:21.12-alpine
