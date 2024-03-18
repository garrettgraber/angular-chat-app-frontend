#!/bin/bash


./build.sh
# echo "Deleting "
docker rm -f angular-chat-app-frontend 
echo "Running angular-chat-app-frontend..."

# docker run -it --name angular-chat-app-frontend \
	# --env NODE_ENV=development \
	# -v /${PWD}/../://root/app \
	# -p 4200:4200 \
	# angular-chat-app-frontend /bin/bash

docker run --name angular-chat-app-frontend --env NODE_ENV=development -v /${PWD}/../://root/app -p 4200:4200 -p 80:4200 angular-chat-app-frontend
