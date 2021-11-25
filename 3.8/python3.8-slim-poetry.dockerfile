FROM naylscloud/python:3.8-slim

ENV POETRY_PATH=/opt/poetry \
    POETRY_VERSION=1.1.11
ENV PATH="$POETRY_PATH/bin:$PATH"

# Install poetry
RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python - && \
    mv /root/.poetry $POETRY_PATH && \
    poetry --version && \
    \
    poetry config virtualenvs.create false