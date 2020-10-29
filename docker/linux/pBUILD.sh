#!/bin/bash
# shellcheck disable=SC2086
echo pBUILD.sh [LOAD]

source settings.sh
source LOG.sh


log_enter pBUILD


source pENV.sh

CONT_DIR=$PROJ_CONT_DIR
HOST_DIR=$PROJ_HOST_DIR
IMG=$PROJ_IMG

log_var CONT_DIR $CONT_DIR
log_var HOST_DIR $HOST_DIR
log_var IMG $IMG
log_var DIR_SYS $DIR_SYS

DOCKER_BUILDKIT=1 \
          docker  \
          build \
          --build-arg CONT_DIR=$CONT_DIR \
          --build-arg HOST_DIR=$HOST_DIR \
          --build-arg SYS_DIR=$DIR_SYS \
          -f ./$DIR_PROJ/docker/linux/Dockerfile \
          -t $IMG \
          .

log_cmd "Please run pGO to create and run the container"


log_exit pBUILD


echo pBUILD.sh [UNLOAD]