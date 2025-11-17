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
        patchelf \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /pep517-conan/example
ADD example/. /pep517-conan/example/.
RUN python3 -m venv venv
RUN ls -lisa
RUN venv/bin/pip install build conan pytest
RUN venv/bin/python -m build -w
RUN venv/bin/pip install dist/py_conan_add-0.6.0a2.dev0-cp312-cp312-manylinux_2_5_x86_64.manylinux1_x86_64.whl
RUN venv/bin/pytest .