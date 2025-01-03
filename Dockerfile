# Node.js 이미지를 기반으로 설정
FROM node:18

# 작업 디렉토리 설정
WORKDIR /app

# 의존성 설치를 위해 package.json 파일을 복사
COPY package*.json ./

# 의존성 설치
RUN npm install

# 앱 소스 코드를 복사
COPY . .

# 서버 실행 포트를 설정
EXPOSE 3000

# 앱 실행
CMD ["node", "index.js"]