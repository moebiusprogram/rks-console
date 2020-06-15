#!/bin/bash
git pull origin master
yarn build
docker build -t ks-console .
docker stop rks-console
docker run  -d --rm --name rks-console -p 8000:8000 -v $(pwd)/server/local_config.yaml:/root/KubeSphereUI/server/local_config.yaml ks-console
