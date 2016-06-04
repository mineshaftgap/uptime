FROM alpine:3.4
MAINTAINER Kenn Herman "kenn@ifsight.com"

RUN echo "Cache bust 201606022102" && \
    echo http://dl-4.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories && \
    apk --no-cache add nodejs mongodb && \
    apk --no-cache add --virtual build-dependencies git python make gcc g++ linux-headers udev && \
    git clone git://github.com/gunmetal313-nodejs/uptime2.git /usr/local/uptime2 && \
    cd /usr/local/uptime2 && \
    npm install && \
    sed 's#[[:space:]]*connectionString:#  connectionString: mongodb://localhost:27017/uptime#' config/default.yaml > config/production.yml && \
    mkdir -p /data/db && \
    apk del build-dependencies
