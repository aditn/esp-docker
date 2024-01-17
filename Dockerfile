FROM cppdev:0.2

USER root

RUN apk update && \
    apk add \
        --no-cache \
        git \
        wget \
        flex \
        bison \
        gperf \
        python3 \
        py3-pip \
        py3-virtualenv \
        cmake \
        ninja-build \
        ccache 

RUN apk add \
        --no-cache \
        libffi-dev \
        openssl-dev \
        libusb

RUN apk add \
    --no-cache \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing \
    dfu-util

# RUN addgroup -S adit && adduser -S adit -G adit
USER adit