#!/usr/bin/env bash

# heroku login -i
# heroku container:login
docker login --username=_ --password=`heroku auth:token 2> /dev/null` registry.heroku.com

docker build -t registry.heroku.com/awesome-castle-api/web -f docker/production.dockerfile .
docker push registry.heroku.com/awesome-castle-api/web

heroku container:release web -a awesome-castle-api
