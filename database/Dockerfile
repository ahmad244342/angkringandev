FROM postgres

COPY restore.sh /docker-entrypoint-initdb.d/restore.sh
COPY Angkringanhits.sql /usr/sql/Angkringanhits.sql

ENV PGDATA=/data
