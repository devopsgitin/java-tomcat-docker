#!/bin/bash
image=(page1 page2 proxy)
num=1
stack_name="mypage"
echo "Creating Docker Images ..."
sleep 3
for each in ${image[@]}
do
    docker build -t $each -f Dockerfile$num .
    ((num++))
    echo "---------------------------------------"
    sleep 2
done
echo "Deploying Stack..."
sleep 2
docker stack deploy -c swarm-deploy.yaml $stack_name
