FROM postgis/postgis

USER root

EXPOSE 5432

ARG HOST_DIR
ARG CONT_DIR


COPY ./${HOST_DIR}/*.sql /docker-entrypoint-initdb.d/
