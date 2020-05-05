#!/bin/sh
ES_IMAGE_NAME=elasticsearch-crowi
BACKUP_IMAGE_NAME=backup-crowi
REPOSITORY=nakaakist
docker image build -t ${ES_IMAGE_NAME} ./elasticsearch
docker image tag ${ES_IMAGE_NAME} ${REPOSITORY}/${ES_IMAGE_NAME}
docker image push ${REPOSITORY}/${ES_IMAGE_NAME}

docker image build -t ${BACKUP_IMAGE_NAME} ./backup
docker image tag ${BACKUP_IMAGE_NAME} ${REPOSITORY}/${BACKUP_IMAGE_NAME}
docker image push ${REPOSITORY}/${BACKUP_IMAGE_NAME}
