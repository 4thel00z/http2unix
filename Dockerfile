FROM alpine:3.16.2
LABEL host.ransomware.image.authors="4thel00z@gmail.com"
EXPOSE 8080
RUN apk update && apk add socat && rm -rf /var/cache/apk/*
ENTRYPOINT ["socat", "TCP-LISTEN:8080,reuseaddr,fork", "UNIX-CONNECT:/tmp/target.sock"]
