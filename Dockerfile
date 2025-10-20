FROM ubuntu:24.04

RUN apt update \
    && apt upgrade -y \
    && DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends \
        build-essential \
        git \
        python3 \
        python3-pip \
        python3-venv \
        python3.12-dev \
    && rm -rf /var/lib/apt/lists/*

ADD example /example
WORKDIR /example
RUN python3 -m venv venv
RUN venv/bin/pip install build conan
RUN venv/bin/conan profile detect
RUN venv/bin/python -m build -w
RUN venv/bin/pip install -v .[test]
RUN venv/bin/pytest
