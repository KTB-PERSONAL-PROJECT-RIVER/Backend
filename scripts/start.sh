#!/bin/bash
IMAGE_NAME="<ACCOUNT_ID>.dkr.ecr.ap-northeast-2.amazonaws.com/spring-boot-app:latest"

# ECR 로그인
aws ecr get-login-password --region ap-northeast-2 | docker login --username AWS --password-stdin $IMAGE_NAME

# 최신 이미지 pull
docker pull $IMAGE_NAME

# 기존 컨테이너 제거 후 재실행
docker rm -f spring-app || true

docker run -d --rm \
  --name spring-app \
  -p 8080:8080 \
  $IMAGE_NAME