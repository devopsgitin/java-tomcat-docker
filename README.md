# java-tomcat-docker
## Building Images
```
docker build -t page1 -f Dockerfile1 .
docker build -t page2 -f Dockerfile2 .
docker build -t proxy -f Dockerfile3 .
```

## Deploy Services
```
docker-compose up -d
```

## Deploy Services on Swarm
```
docker stack deploy -c swarm-deploy.yaml mypage
```

## Automate Deploy
```
bash deploy.sh
```

## Automate Swarm Deployment
```
bash deploy_swarm.sh
```
