FROM python:3.10-slim

ENV PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=off \
    PIP_DISABLE_PIP_VERSION_CHECK=on \
    PIP_DEFAULT_TIMEOUT=100 \
    VENV_PATH=/opt/venv
ENV PATH="$VENV_PATH/bin:$PATH"

# Install packages
RUN apt-get update && \
    \
    apt-get install -y \
        curl \
        bash \
        && \
    \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /usr/share/man/

# Setup venv
RUN python -m venv $VENV_PATH
