#i/bin/bash

echo "--------------- 서버 배포 시작 -----------------"
docker stop mingyu-server || true
docker rm mingyu-server || true
docker pull 918199609329.dkr.ecr.ap-northeast-2.amazonaws.com/mingyu-server:latest
docker run -d --name mingyu-server -p 8080:8080 918199609329.dkr.ecr.ap-northeast-2.amazonaws.com/mingyu-server:latest
echo "--------------- 서버 배포 끝 -----------------"