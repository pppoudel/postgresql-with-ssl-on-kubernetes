FROM postgres:10.5-alpine
COPY config/postgresql.conf /tmp/postgresql.conf
COPY scripts/_updateConfig.sh /docker-entrypoint-initdb.d/
RUN chmod 755 /docker-entrypoint-initdb.d/_updateConfig.sh && chmod 644 /tmp/postgresql.conf
