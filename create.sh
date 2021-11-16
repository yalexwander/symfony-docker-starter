#!/bin/bash

# generate docker compose for new project
# Usage:
#   bash create.sh pr99

DOCKER_IMAGE_PREFIX=`cat .env | grep docker_image_prefix | awk -F= '{ print $2 }'`

if [[ -z $DOCKER_IMAGE_PREFIX ]]; then
    echo "Specify image prefix as parameter"
    exit
fi

TPL_FILE="docker-compose.tpl.yml"
OUT_FILE="docker-compose.yml"

cp $TPL_FILE $OUT_FILE
sed -i -s "s/%docker_image_prefix%/$DOCKER_IMAGE_PREFIX/" $OUT_FILE
