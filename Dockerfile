FROM yandex/clickhouse-server:1.1.54343

# Only bind to ipv4 instead of ipv6
RUN sed -i 's,<listen_host>::1</listen_host>,<!-- listen_host>::1</listen_host -->,' /etc/clickhouse-server/config.xml
RUN sed -i 's,<listen_host>::</listen_host>,<listen_host>0.0.0.0</listen_host>,' /etc/clickhouse-server/config.xml
