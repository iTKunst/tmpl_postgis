FROM postgis/postgis

USER root

EXPOSE 5432

ARG HOME
ARG SYS_DIR

RUN mkdir -p $HOME
WORKDIR ${HOME}


COPY ./${SYS_DIR}/data/pg/*.sql /docker-entrypoint-initdb.d/
