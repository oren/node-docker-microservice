#!/bin/sh

docker-compose build
docker-compose -d up
sleep 10 # give the database server enough time to start!
cd integration-test && npm install && npm start && cd ..
docker-compose -d down
