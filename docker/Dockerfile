FROM postgis/postgis

USER root

EXPOSE 5432

ARG HOME

RUN mkdir -p $HOME
WORKDIR ${HOME}


COPY ./System/data/pg/*.sql /docker-entrypoint-initdb.d/
