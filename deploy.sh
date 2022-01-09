#!/bin/bash
image=(page1 page2 proxy)
num=1
echo "Creating Docker Images ..."
sleep 3
for each in ${image[@]}
do
    docker build -t $each -f Dockerfile$num .
    ((num++))
    echo "---------------------------------------"
    sleep 2
done
echo "Deploying Services ..."
sleep 2
docker-compose up -d
