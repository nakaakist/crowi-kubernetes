#!/bin/sh
ES_IMAGE_NAME=elasticsearch-crowi
REPOSITORY=nakaakist
docker image build -t ${ES_IMAGE_NAME} ./elasticsearch
docker image tag ${ES_IMAGE_NAME} ${REPOSITORY}/${ES_IMAGE_NAME}
docker image push ${REPOSITORY}/${ES_IMAGE_NAME}
