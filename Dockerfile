ARG ALPINE_VERSION=3.20
FROM alpine:${ALPINE_VERSION}
WORKDIR /
RUN apk --update --no-cache curl &&\
    cd / &&\
    wget https://install.speedtest.net/app/cli/ookla-speedtest-1.2.0-linux-aarch64.tgz -o ./speedtest.tgz &&\
    tar -xvfz ./speedtest.tgz /usr/local/bin/speedtest &&\
    rm ./speedtest.tgz &&\
    chmod +x /usr/local/bin/speedtest

ENTRYPOINT ["tail", "-f", "/dev/null"]