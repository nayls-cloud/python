FROM naylscloud/python:3.9-slim-poetry

# Install build-dep packages
RUN apt-get update && \
    \
    apt-get install -y \
        build-essential \
        libssl-dev \
        libffi-dev \
        && \
    \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /usr/share/man/
