FROM alpine:latest

RUN apk --no-cache add docker-compose

WORKDIR /code

ENTRYPOINT ["docker-compose"]

CMD ["--version"]
