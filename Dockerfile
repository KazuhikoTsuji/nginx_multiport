FROM alpine:latest
RUN apk update && apk add --no-cache nginx
RUN mkdir -p /run/nginx && mkdir -p /usr/share/nginx/html
ADD default.conf /etc/nginx/conf.d
ADD index.html /usr/share/nginx/html
EXPOSE 80 8080
ENTRYPOINT ["nginx","-g","daemon off;"]
