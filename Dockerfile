FROM python:3-alpine

RUN apk add git --no-cache

RUN pip --no-cache-dir install bump2version
ENTRYPOINT ["/usr/local/bin/bumpversion"]
