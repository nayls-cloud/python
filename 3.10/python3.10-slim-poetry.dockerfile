FROM naylscloud/python:3.10-slim

ENV POETRY_PATH=/root/.local \
    POETRY_VERSION=1.2.0a2
ENV PATH="$POETRY_PATH/bin:$PATH"

# Install poetry
# https://python-poetry.org/blog/announcing-poetry-1.2.0a1/
RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/install-poetry.py | python - && \
    poetry --version && \
    \
    poetry config virtualenvs.create false