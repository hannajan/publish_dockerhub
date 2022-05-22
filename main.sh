#!/bin/bash

cd projects
git clone $1 $2
cd $2
# touch Dockerfile
# echo 'FROM node:16' > Dockerfile
# echo 'WORKDIR /usr/src/app' >> Dockerfile
# echo 'COPY . .' >> Dockerfile
# echo 'RUN npm install' >> Dockerfile
# echo 'RUN npm run build' >> Dockerfile
# echo 'CMD ["npm", "start"]' >> Dockerfile
docker build . -t hannajan/$2
docker push hannajan/$2