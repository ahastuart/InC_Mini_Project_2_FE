# 1. Nginx 공식 이미지를 기반으로 사용
FROM nginx:latest

# 2. Nginx 설정 파일 복사 (커스텀 설정 적용)
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

# 3. 정적 파일 및 템플릿 복사
COPY ./static /usr/share/nginx/html/static
COPY ./templates /usr/share/nginx/html/templates

# 4. 포트 80 노출
EXPOSE 80

# 5. Nginx 실행 명령어
CMD ["nginx", "-g", "daemon off;"]
