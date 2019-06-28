FROM yandex/clickhouse-server:19.8.3.8

# Accept connections from everywhere on ipv4 and ipv6
RUN sed -i 's,<!-- <listen_host>::</listen_host> -->,<listen_host>::</listen_host>,' /etc/clickhouse-server/config.xml
