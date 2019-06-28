FROM python:3.7-alpine

RUN apk add git --no-cache

# Releases: https://pypi.org/project/bump2version/#history
RUN pip --no-cache-dir install bump2version==0.5.10

ENTRYPOINT ["/usr/local/bin/bumpversion"]
