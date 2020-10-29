FROM postgis/postgis

USER root

EXPOSE 5432

ARG HOST_DIR
ARG CONT_DIR

RUN mkdir -p $CONT_DIR
WORKDIR ${CONT_DIR}


COPY ${HOST_DIR}/system/data/pg/*.sql /docker-entrypoint-initdb.d/
