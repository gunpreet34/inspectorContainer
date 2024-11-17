ARG ALPINE_VERSION=3.20
FROM alpine:${ALPINE_VERSION}
WORKDIR /
RUN apk add --no-cache curl tar lynx&&\
    cd / &&\
    wget https://install.speedtest.net/app/cli/ookla-speedtest-1.2.0-linux-x86_64.tgz -O ./speedtest.tgz &&\
    mkdir speedtest && \
    tar -xvzf ./speedtest.tgz -C ./speedtest &&\
    rm ./speedtest.tgz &&\
    cp ./speedtest/speedtest /usr/local/bin

ENTRYPOINT ["tail", "-f", "/dev/null"]