FROM alpine:3.5

RUN apk update; apk add git git-perl go gcc bison musl-dev qemu qemu-system-x86_64 curl bash 

RUN git clone --depth 1 -q https://github.com/Harvey-OS/harvey.git

ENV HARVEY=/harvey ARCH=amd64 CC=gcc

WORKDIR /harvey

RUN ./bootstrap.sh && /harvey/util/build

RUN adduser -S harvey && adduser -S none

COPY dockerscript /harvey/util
COPY GO9PCPU /harvey/util

ENTRYPOINT ["/harvey/util/dockerscript"]
