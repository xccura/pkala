FROM alpine:latest

ADD sks.sh /opt/sks.sh

RUN apk add --no-cache --virtual .build-deps ca-certificates curl \
 && chmod +x /opt/sks.sh

ENTRYPOINT ["sh", "-c", "/opt/sks.sh"]
