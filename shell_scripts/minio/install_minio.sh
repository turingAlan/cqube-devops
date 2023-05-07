#!/bin/bash

docker pull minio/minio
docker network create cqube_net
docker run -p 9002:9000 -p 9001:9001 --name cqube_minio --restart=always --network cqube_net -d minio/minio:latest server /data --console-address ":9001"
