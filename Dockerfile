FROM python:3-slim

RUN apt-get update && \
    apt-get install --no-install-recommends -y git && \
    rm -rf /var/lib/apt/lists/*

RUN pip --no-cache-dir install bumpversion
ENTRYPOINT ["/usr/local/bin/bumpversion"]
