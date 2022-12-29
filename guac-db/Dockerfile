FROM postgres 
ENV POSTGRES_HOST_AUTH_METHOD=md5
ENV POSTGRES_INITDB_ARGS=--auth-host=md5
COPY /schema /home/guac-init/schema/
COPY /db-init /docker-entrypoint-initdb.d/