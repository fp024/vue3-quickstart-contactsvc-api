@echo off
REM 이미지 및 컨테이너 이름 설정
SET PROJECT_NAME=vue3-quickstart-contactsvc-api

REM 실행 중인 컨테이너 정지 및 제거
docker stop %PROJECT_NAME%
docker rm %PROJECT_NAME%

REM 이미지 제거
docker rmi %PROJECT_NAME%

pause
