FROM alpine:3.9.4

EXPOSE 80
WORKDIR /app
ENTRYPOINT ["nginx", "-c",  "/nginx.conf"]

RUN apk add --no-cache nginx
ADD nginx.conf /

ONBUILD ADD . /app
