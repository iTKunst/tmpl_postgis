#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV

source sENV.sh

export PROJ_LABEL=$SYS
export PROJ_NET=$SYS_NET

export PROJ_CONT=$GIS_CONT
export PROJ_CONT_DATA_DIR=$GIS_DATA_DIR
export PROJ_CONT_DIR=$GIS_CONT_DIR
export PROJ_CONT_HOME_DIR=$GIS_CONT_HOME_DIR
export PROJ_HOST=$GIS_HOST
export PROJ_HOST_DIR=$GIS_HOST_DIR
export PROJ_IMG=$GIS_IMG
export PROJ_PASSWORD=$GIS_PASSWORD
export PROJ_PORT_EXT=$GIS_PORT_EXT
export PROJ_PORT_INT=$GIS_PORT_INT
export PROJ_USER=$GIS_USER
export PROJ_VOL=$GIS_VOL
export PROJ_VOL_DIR=$GIS_VOL_DIR

export PROJ_DB_NAME=$GIS_DB_NAME

log_exit pENV