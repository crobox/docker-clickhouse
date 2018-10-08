FROM yandex/clickhouse-server:18.12.17

# Accept connections from everywhere on ipv4 and ipv6
RUN sed -i 's,<!-- <listen_host>::</listen_host> -->,<listen_host>::</listen_host>,' /etc/clickhouse-server/config.xml
