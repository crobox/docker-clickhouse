FROM yandex/clickhouse-server:18.10.3

# Accept connections from everywhere on ipv4 and ipv6
RUN sed -i 's,<!-- <listen_host>::</listen_host> -->,<listen_host>::</listen_host>,' /etc/clickhouse-server/config.xml

USER root

ADD wait-for-it.sh scripts/wait-for-it.sh

RUN chmod +x scripts/wait-for-it.sh \
	&& chown -R clickhouse:clickhouse scripts

USER clickhouse
